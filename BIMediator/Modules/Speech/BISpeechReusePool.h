//
//  BISpeechReusePool.h
//  BIMediator
//
//  Created by xinwen on 2020/5/15.
//  Copyright © 2020 baidu. All rights reserved.
//  语音模块重用池

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BISpeechReusePool : NSObject

@property(nonatomic, strong) NSMutableDictionary *reusePool;

+ (instancetype)sharedInstance;

@end

NS_ASSUME_NONNULL_END
