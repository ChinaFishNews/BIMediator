//
//  BISpeechReusePool.m
//  BIMediator
//
//  Created by xinwen on 2020/5/15.
//  Copyright © 2020 baidu. All rights reserved.
//

#import "BISpeechReusePool.h"

@implementation BISpeechReusePool

+ (instancetype)sharedInstance {
    static BISpeechReusePool *pool;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        pool = [[BISpeechReusePool alloc] init];
    });
    return pool;
}

- (NSMutableDictionary *)reusePool {
    if (!_reusePool) {
        _reusePool = [[NSMutableDictionary alloc] init];
    }
    return _reusePool;
}

@end
