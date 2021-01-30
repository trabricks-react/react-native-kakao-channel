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

@objc(ARNKakaoChannel)
public class ARNKakaoChannel: NSObject {
    private var safariViewController: SFSafariViewController?
    
    public override init() {
        var appKey: String = Bundle.main.object(forInfoDictionaryKey: "KAKAO_APP_KEY") as String
        KakaoSDKCommon.initSDK(appKey: appKey)
    }
    
    func presentSafari(url: String,
                       completion: (Error?) -> void) -> Bool {
        self.safariViewController = SFSafariViewController(url: url)
        self.safariViewController?.modalTransitionStyle = .crossDissolve
        self.safariViewController?.modalPresentationStyle = .overCurrentContext
        self.present(self.safariViewController!, animated: true) {
            completion()
        }
    }
    
    @objc(addFriend:friendId:resolve:reject:)
    func addFriend(_ friendId: NSString,
                   resolver resolve: @escaping RCTPromiseResolveBlock,
                   rejector reject: @escaping RCTPromiseRejectBlock) -> Bool {
        var url: String = TalkApi.shared.makeUrlForAddChannel(channelPublicId: friendId)
        self.presentSafari(url: url, (error) {
            if (error) {
                reject(error);
            } else {
                resolve(true);
            }
        })
    }
    
    @objc(chat:friendId:resolve:reject:)
    func chat(_ friendId: NSString,
              resolver resolve: @escaping RCTPromiseResolveBlock,
              rejector reject: @escaping RCTPromiseRejectBlock) -> Bool {
        var url: String = TalkApi.shared.makeUrlForChannelChat(channelPublicId: friendId)
        self.presentSafari(url: url, (error) {
            if (error) {
                reject(error);
            } else {
                resolve(true);
            }
        })
    }
}

