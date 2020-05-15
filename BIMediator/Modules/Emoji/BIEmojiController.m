//
//  BIEmojiController.m
//  BIMediator
//
//  Created by xinwen on 2020/5/14.
//  Copyright © 2020 baidu. All rights reserved.
//

#import "BIEmojiController.h"
#import "BIMediator.h"
#import "BIMediator+Skin.h"
#import "BIMediator+Emoji.h"
#import "BITabBarController.h"
#import "BIEmojiDetailController.h"
#import "BIAdapterManager.h"

@interface BIEmojiController ()

@end

@implementation BIEmojiController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Emoji";
}

- (IBAction)totoEmojiDetail:(id)sender {
//    UIViewController *destVC = [[BIMediator sharedInstance] mediator_emojiDetailControllerWithParams:@{}];
    BIEmojiDetailController *destVC = [[BIEmojiDetailController alloc] init];
    [[BIAdapterManager currentNavigationService] pushVC:destVC animated:YES];
}

- (IBAction)gotoSkinDetail:(id)sender {
    UIViewController *destVC = [[BIMediator sharedInstance] mediator_skinDetailControllerWithParams:@{}];
    self.tabBarController.selectedIndex = 0;
    [[BIAdapterManager currentNavigationService] pushVC:destVC animated:YES];
}

@end
