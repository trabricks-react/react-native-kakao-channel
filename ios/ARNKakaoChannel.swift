//
//  ARNKakaoChannel.swift
//  RNCKakaoSDK
//
//  Created by noel on 2021/01/30.
//  Copyright © 2021 Facebook. All rights reserved.
//

import Foundation
import KakaoSDKTalk
import KakaoSDKCommon
import SafariServices

@objc(ARNKakaoChannel)
public class ARNKakaoChannel: NSObject {
    private var safariViewController: SFSafariViewController?

    public override init() {
        let appKey: String? = Bundle.main.object(forInfoDictionaryKey: "KAKAO_APP_KEY") as? String
        KakaoSDK.initSDK(appKey: appKey!)
    }
    
    @objc
    static func requiresMainQueueSetup() -> Bool {
        return true;
    }

    func presentSafari(url: URL,
                       completion: @escaping (Bool) -> Void) -> Void {
        let queue = DispatchQueue(label: "KakaoChannel")
        self.safariViewController = SFSafariViewController(url: url)
        self.safariViewController?.modalTransitionStyle = .crossDissolve
        self.safariViewController?.modalPresentationStyle = .overCurrentContext

        queue.async {
            UIApplication.shared.open(url,
                                      options: [:],
                                      completionHandler: { (success) in
                                        completion(success)
                                      })
        }
    }

    @objc(addFriend:resolve:reject:)
    func addFriend(_ friendId: NSString,
                   resolver resolve: @escaping RCTPromiseResolveBlock,
                   rejector reject: @escaping RCTPromiseRejectBlock) -> Void {
        let url: URL? = TalkApi.shared.makeUrlForAddChannel(channelPublicId: friendId as String)
        self.presentSafari(url: url!, completion: { success in
            resolve(success);
        })
    }

    @objc
    func chat(_ friendId: NSString,
              resolver resolve: @escaping RCTPromiseResolveBlock,
              rejector reject: @escaping RCTPromiseRejectBlock) -> Void {
        let url: URL? = TalkApi.shared.makeUrlForChannelChat(channelPublicId: friendId as String)
        self.presentSafari(url: url!, completion: { success in
            resolve(success);
        })
    }
}

