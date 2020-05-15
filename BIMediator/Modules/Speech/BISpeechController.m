//
//  BISpeechController.m
//  BIMediator
//
//  Created by xinwen on 2020/5/15.
//  Copyright © 2020 baidu. All rights reserved.
//

#import "BISpeechController.h"

@interface BISpeechController ()

@property(nonatomic, strong)UILabel *label;

@end

@implementation BISpeechController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    NSInteger createCount = [userDefault integerForKey:@"createCount"];
    [userDefault setInteger:createCount + 1 forKey:@"createCount"];
    [userDefault synchronize];
    
    UILabel *label = [[UILabel alloc] init];
    self.label = label;
    label.numberOfLines = 0;
    label.frame = CGRectMake(100, 100, 200, 300);
    label.text = [NSString stringWithFormat:@"第%ld次创建\n postParams = %@", createCount, self.postParams.description];
    label.textColor = [UIColor redColor];
    [self.view addSubview:label];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"清空参数" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:20];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    button.frame = CGRectMake(100, 400, 200, 50);
    [self.view addSubview:button];
}


- (void)buttonClicked:(UIButton *)sender {
    self.postParams = @{};
    
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    NSInteger createCount = [userDefault integerForKey:@"createCount"];
    self.label.text = [NSString stringWithFormat:@"第%ld次创建\n postParams = %@", createCount, self.postParams.description];
}

@end
