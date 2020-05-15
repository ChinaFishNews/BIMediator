//
//  BIAdapterManager.h
//  BIMediator
//
//  Created by xinwen on 2020/5/14.
//  Copyright © 2020 baidu. All rights reserved.
//  导航

#import <Foundation/Foundation.h>
#import "BINavigatorProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface BIAdapterManager : NSObject

@property (strong, nonatomic) NSObject<BINavigatorProtocol> *navigationService;

+ (BIAdapterManager*)sharedAdapterManager;

+ (NSObject<BINavigatorProtocol> *)currentNavigationService;


@end

NS_ASSUME_NONNULL_END
