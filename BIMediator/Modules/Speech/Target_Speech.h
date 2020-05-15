//
//  Target_Speech.h
//  BIMediator
//
//  Created by xinwen on 2020/5/15.
//  Copyright © 2020 baidu. All rights reserved.
//  语音模块对外暴露的接口

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Target_Speech : NSObject

- (UIViewController *)Action_BISpeechController:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
