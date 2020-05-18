//
//  BISkinDetailController.m
//  BIMediator
//
//  Created by xinwen on 2020/5/14.
//  Copyright © 2020 baidu. All rights reserved.
//

#import "BISkinDetailController.h"
#import "BISkinDetailProtocol.h"
#import "BIAdapterManager.h"

@interface BISkinDetailController ()<BISkinDetailProtocol>

@end

@implementation BISkinDetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"SkinDetail";
    self.view.backgroundColor = [UIColor whiteColor];
}

#pragma mark - BISkinDetailProtocol
- (void)closePage {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
