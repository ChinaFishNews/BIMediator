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
#import "BIMediator+Speech.h"
#import "BISkinDetailProtocol.h"

@interface BIEmojiController ()

@property (nonatomic, strong) UIViewController<BISkinDetailProtocol> *skinDetailVC;

@end

@implementation BIEmojiController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Emoji";
}

- (IBAction)totoEmojiDetail:(id)sender {
    UIViewController *destVC = [[BIMediator sharedInstance] mediator_emojiDetailControllerWithParams:@{} completion:^{
        NSLog(@"completion");
    }];
//    BIEmojiDetailController *destVC = [[BIEmojiDetailController alloc] init];
    [[BIAdapterManager currentNavigationService] pushVC:destVC animated:YES];
}

- (IBAction)gotoSkinDetail:(id)sender {
    self.skinDetailVC = (UIViewController<BISkinDetailProtocol> *)[[BIMediator sharedInstance] mediator_skinDetailControllerWithParams:@{}];
    self.tabBarController.selectedIndex = 0;
    [[BIAdapterManager currentNavigationService] pushVC:self.skinDetailVC animated:YES];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if ([self.skinDetailVC respondsToSelector:@selector(closePage)]) {
            [self.skinDetailVC closePage];
        }
    });
}


- (IBAction)gotoSpeech:(id)sender {
    UIViewController *speechVc = [[BIMediator sharedInstance] mediator_speechControllerWithParams:@{@"test" : @"just a test"} reuse:YES];
    [[BIAdapterManager currentNavigationService] pushVC:speechVc animated:YES];
}

@end
