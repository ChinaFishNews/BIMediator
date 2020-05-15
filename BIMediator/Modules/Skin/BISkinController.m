//
//  BISkinController.m
//  BIMediator
//
//  Created by xinwen on 2020/5/14.
//  Copyright © 2020 baidu. All rights reserved.
//

#import "BISkinController.h"
#import "BIMediator.h"
#import "BIMediator+Skin.h"
#import "BIMediator+Emoji.h"
#import "BISkinDetailController.h"
#import "BITabBarController.h"
#import "BIAdapterManager.h"

@interface BISkinController ()

@end

@implementation BISkinController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Skin";
}

- (IBAction)gotoSkinDetail:(id)sender {
    UIViewController *destVC = [[BIMediator sharedInstance] mediator_skinDetailControllerWithParams:@{}];
//    BISkinDetailController *destVC = [[BISkinDetailController alloc] init];
//    [self.navigationController pushViewController:destVC animated:YES];
    [[BIAdapterManager currentNavigationService] pushVC:destVC animated:YES];
}

- (IBAction)gotoEmojiDetail:(id)sender {
    UIViewController *destVC = [[BIMediator sharedInstance] mediator_emojiDetailControllerWithParams:@{}];
    self.tabBarController.selectedIndex = 1;
    [[BIAdapterManager currentNavigationService] pushVC:destVC animated:YES];
}

@end