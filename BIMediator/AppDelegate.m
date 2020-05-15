//
//  AppDelegate.m
//  BIMediator
//
//  Created by xinwen on 2020/5/14.
//  Copyright © 2020 baidu. All rights reserved.
//

#import "AppDelegate.h"
#import "BIMediator.h"
#import "BIAdapterManager.h"
#import "BINavigatorImp.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    BIAdapterManager *adaperManager = [BIAdapterManager sharedAdapterManager];
    adaperManager.navigationService = [[BINavigatorImp alloc] init];
    
    return YES;
}

// 外部跳转
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString *,id> *)options {
    return [[[BIMediator sharedInstance] performActionWithUrl:url] boolValue];
}

@end
