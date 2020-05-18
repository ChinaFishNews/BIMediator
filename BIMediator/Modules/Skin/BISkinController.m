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
#import "BIMediator+Speech.h"
#import "BIEmojiDetailProtocol.h"

@interface BISkinController ()

@end

@implementation BISkinController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Skin";
}

- (IBAction)gotoSkinDetail:(id)sender {
    //    BISkinDetailController *destVC = [[BISkinDetailController alloc] init];
    //    [self.navigationController pushViewController:destVC animated:YES];
    
    UIViewController *destVC = [[BIMediator sharedInstance] mediator_skinDetailControllerWithParams:@{}];
    [[BIAdapterManager currentNavigationService] pushVC:destVC animated:YES];
}

- (IBAction)gotoEmojiDetail:(id)sender {
    UIViewController<BIEmojiDetailProtocol> *destVC = [[BIMediator sharedInstance] mediator_emojiDetailControllerWithParams:@{} completion:^{
        NSLog(@"completion");
    }];
    
    if ([destVC respondsToSelector:@selector(changeViewColor)]) {
        [destVC changeViewColor];
    }
    
    self.tabBarController.selectedIndex = 1;
    [[BIAdapterManager currentNavigationService] pushVC:destVC animated:YES];
}

- (IBAction)gotoSpeech:(id)sender {
    UIViewController *speechVc = [[BIMediator sharedInstance] mediator_speechControllerWithParams:@{@"test" : @"just a test"} reuse:YES];
    [[BIAdapterManager currentNavigationService] pushVC:speechVc animated:YES];
}

@end
