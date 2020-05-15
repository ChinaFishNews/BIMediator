//
//  BIMediator+Emoji.m
//  BIMediator
//
//  Created by xinwen on 2020/5/14.
//  Copyright © 2020 baidu. All rights reserved.
//

#import "BIMediator+Emoji.h"

NSString *const kBIMediatorTargetEmoji = @"Emoji";
NSString *const kBIMediatorActionEmojiDetail = @"BIEmojiDetailController";

@implementation BIMediator (Emoji)

- (UIViewController *)mediator_emojiDetailControllerWithParams:(NSDictionary *)params {
    UIViewController *viewController = [self performTarget:kBIMediatorTargetEmoji
                                                    action:kBIMediatorActionEmojiDetail
                                                    params:params];
    
    if ([viewController isKindOfClass:[UIViewController class]]) {
        return viewController;
    } else {
        return nil;
    }
}

@end
