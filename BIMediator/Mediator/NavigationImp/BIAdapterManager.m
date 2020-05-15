//
//  BIAdapterManager.m
//  BIMediator
//
//  Created by xinwen on 2020/5/14.
//  Copyright © 2020 baidu. All rights reserved.
//

#import "BIAdapterManager.h"

@implementation BIAdapterManager

+ (BIAdapterManager*)sharedAdapterManager {
    static dispatch_once_t onceToken;
       static BIAdapterManager *_sharedManager = nil;
       dispatch_once(&onceToken, ^{
           _sharedManager = [[self alloc] init];
       });
       return _sharedManager;
}

+ (NSObject<BINavigatorProtocol> *)currentNavigationService {
    return [[self class] sharedAdapterManager].navigationService;
}

@end
