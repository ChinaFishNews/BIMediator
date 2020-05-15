//
//  BIMediator+Speech.m
//  BIMediator
//
//  Created by xinwen on 2020/5/15.
//  Copyright © 2020 baidu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BIMediator+Speech.h"

NSString *const kBIMediatorTargetSpeech = @"Speech";
NSString *const kBIMediatorActionSpeech = @"BISpeechController";

@implementation BIMediator (Speech)

- (UIViewController *)mediator_speechControllerWithParams:(NSDictionary *)params
                                                    reuse:(BOOL)reuse {
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:params];
    dict[@"reuse"] = @(reuse);
    
    UIViewController *viewController = [self performTarget:kBIMediatorTargetSpeech
                                                    action:kBIMediatorActionSpeech
                                                    params:dict];
    
    if ([viewController isKindOfClass:[UIViewController class]]) {
        return viewController;
    } else {
        return nil;
    }
}

@end
