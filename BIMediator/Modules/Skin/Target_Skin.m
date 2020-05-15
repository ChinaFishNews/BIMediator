//
//  Target_Skin.m
//  BIMediator
//
//  Created by xinwen on 2020/5/14.
//  Copyright © 2020 baidu. All rights reserved.
//

#import "Target_Skin.h"
#import "BISkinController.h"
#import "BISkinDetailController.h"

@implementation Target_Skin

- (UIViewController *)Action_BISkinDetailController:(NSDictionary *)params {
    BISkinDetailController *detailController = [[BISkinDetailController alloc] init];
    detailController.postParams = params;
    return detailController;
}

@end
