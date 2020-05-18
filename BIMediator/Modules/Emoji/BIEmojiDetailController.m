//
//  BIEmojiDetailController.m
//  BIMediator
//
//  Created by xinwen on 2020/5/14.
//  Copyright © 2020 baidu. All rights reserved.
//

#import "BIEmojiDetailController.h"
#import "BIEmojiDetailProtocol.h"

@interface BIEmojiDetailController ()<BIEmojiDetailProtocol>

@end

@implementation BIEmojiDetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"EmojiDetail";
    self.view.backgroundColor = [UIColor whiteColor];
    
    void(^completion)(void) = self.postParams[@"completion"];
    completion();
}

#pragma mark - BIEmojiDetailProtocol
- (void)changeViewColor {
    self.view.backgroundColor = [UIColor redColor];
}

@end
