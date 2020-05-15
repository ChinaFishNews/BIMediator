//
//  BIMediator+Skin.m
//  BIMediator
//
//  Created by xinwen on 2020/5/14.
//  Copyright © 2020 baidu. All rights reserved.
//

#import "BIMediator+Skin.h"

NSString *const kBIMediatorTargetSkin = @"Skin";
NSString *const kBIMediatorActionSkinDetail = @"BISkinDetailController";


@implementation BIMediator (Skin)

- (UIViewController *)mediator_skinDetailControllerWithParams:(NSDictionary *)params {
    UIViewController *viewController = [self performTarget:kBIMediatorTargetSkin
                                                    action:kBIMediatorActionSkinDetail
                                                    params:params];
    
    if ([viewController isKindOfClass:[UIViewController class]]) {
        return viewController;
    } else {
        return nil;
    }
}

@end
