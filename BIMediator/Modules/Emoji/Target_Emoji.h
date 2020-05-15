//
//  Target_Emoji.h
//  BIMediator
//
//  Created by xinwen on 2020/5/14.
//  Copyright © 2020 baidu. All rights reserved.
//  表情模块对外暴露的接口

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Target_Emoji : NSObject

- (UIViewController *)Action_BIEmojiDetailController:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
