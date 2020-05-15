//
//  BIMediator+Emoji.h
//  BIMediator
//
//  Created by xinwen on 2020/5/14.
//  Copyright © 2020 baidu. All rights reserved.
//  表情模块对应支持接口

#import <UIKit/UIKit.h>
#import "BIMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface BIMediator (Emoji)

// 表情详情页
- (UIViewController *)mediator_emojiDetailControllerWithParams:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
