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
import WebKit

@objc(ARNKakaoChannel)
public class ARNKakaoChannel: NSObject {
    private var safariViewController: SFSafariViewController?
    
    public override init() {
        var appKey: String? = Bundle.main.object(forInfoDictionaryKey: "KAKAO_APP_KEY") as String?
        KakaoSDKCommon.initSDK(appKey: appKey!)
    }
    
    func presentSafari(url: URL,
                       completion: (Error?) -> Void) -> Bool {
        self.safariViewController = SFSafariViewController(url: url)
        self.safariViewController?.modalTransitionStyle = .crossDissolve
        self.safariViewController?.modalPresentationStyle = .overCurrentContext
        self.present(self.safariViewController!, animated: true) {
            completion()
        }
    }
    
    @objc(addFriend:resolve:reject:)
    func addFriend(_ friendId: NSString,
                   resolver resolve: @escaping RCTPromiseResolveBlock,
                   rejector reject: @escaping RCTPromiseRejectBlock) -> Bool {
        var url: URL? = TalkApi.shared.makeUrlForAddChannel(channelPublicId: friendId as String)
        self.presentSafari(url: url!, (error) {
            if (error) {
                reject(error);
            } else {
                resolve(true);
            }
        })
    }
    
    @objc(chat:resolve:reject:)
    func chat(_ friendId: NSString,
              resolver resolve: @escaping RCTPromiseResolveBlock,
              rejector reject: @escaping RCTPromiseRejectBlock) -> Bool {
        var url: URL? = TalkApi.shared.makeUrlForChannelChat(channelPublicId: friendId as String)
        self.presentSafari(url: url!, (error) {
            if (error) {
                reject(error);
            } else {
                resolve(true);
            }
        })
    }
}

