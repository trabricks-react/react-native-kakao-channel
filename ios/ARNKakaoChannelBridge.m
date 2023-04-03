//
//  ARNKakaoChannelBridge.m
//  RNCKakaoSDK
//
//  Created by noel on 2021/01/30.
//  Copyright © 2021 Facebook. All rights reserved.
//

#import "ARNKakaoChannelBridge.h"
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(ARNKakaoChannel, NSObject)

RCT_EXTERN_METHOD(addFriend: (NSString *) friendId
                  resolver: (RCTPromiseResolveBlock *)resolve
                  rejecter: (RCTPromiseRejectBlock *)reject);

RCT_EXTERN_METHOD(chat: (NSString *) friendId
                  resolver: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject);

@end
