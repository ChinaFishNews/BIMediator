//
//  Target_Emoji.m
//  BIMediator
//
//  Created by xinwen on 2020/5/14.
//  Copyright © 2020 baidu. All rights reserved.
//

#import "Target_Emoji.h"
#import "BIEmojiController.h"
#import "BIEmojiDetailController.h"

@implementation Target_Emoji

- (UIViewController *)Action_BIEmojiDetailController:(NSDictionary *)params {
    BIEmojiDetailController *detailController = [[BIEmojiDetailController alloc] init];
    detailController.postParams = params;
    return detailController;
}

@end
