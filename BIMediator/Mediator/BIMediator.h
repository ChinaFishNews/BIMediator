//
//  BIMediator.h
//  BIMediator
//
//  Created by xinwen on 2020/5/14.
//  Copyright © 2020 baidu. All rights reserved.
//  中间件

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BIMediator : NSObject

+ (instancetype)sharedInstance;

// 外部App调用入口
- (id)performActionWithUrl:(NSURL *)url;

// 本地组件调用入口
- (id)performTarget:(NSString *)targetName action:(NSString *)actionName params:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
