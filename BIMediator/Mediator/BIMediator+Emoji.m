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

- (UIViewController *)mediator_emojiDetailControllerWithParams:(NSDictionary *)params
                                                    completion:(void(^)(void))completion {
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:params];
    dict[@"completion"] = completion;
    
    UIViewController *viewController = [self performTarget:kBIMediatorTargetEmoji
                                                    action:kBIMediatorActionEmojiDetail
                                                    params:dict];
    
    if ([viewController isKindOfClass:[UIViewController class]]) {
        return viewController;
    } else {
        return nil;
    }
}

@end
