//
//  BIMediator.m
//  BIMediator
//
//  Created by xinwen on 2020/5/14.
//  Copyright © 2020 baidu. All rights reserved.
//

#import "BIMediator.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"

@interface BIMediator ()

@end

@implementation BIMediator

+ (instancetype)sharedInstance {
    static BIMediator *mediator;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mediator = [[BIMediator alloc] init];
    });
    return mediator;
}

// 外部App调用入口  scheme://[target]/[action]?[params]
- (id)performActionWithUrl:(NSURL *)url {
    if (!url) {
        return nil;
    }
    
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    NSString *urlString = [url query];
    for (NSString *param in [urlString componentsSeparatedByString:@"&"]) {
        NSArray *elts = [param componentsSeparatedByString:@"="];
        if([elts count] < 2) continue;
        [params setObject:[elts lastObject] forKey:[elts firstObject]];
    }
    
    NSString *actionName = [url.path stringByReplacingOccurrencesOfString:@"/" withString:@""];
    if ([actionName hasPrefix:@"native"]) {
        return @(NO);
    }
    
    id result = [self performTarget:url.host
                             action:actionName
                             params:params];
    return result;
}

// 本地组件调用入口
- (id)performTarget:(NSString *)targetName
             action:(NSString *)actionName
             params:(NSDictionary *)params {
    NSString *targetClassString = [NSString stringWithFormat:@"Target_%@", targetName];
    NSString *actionString = [NSString stringWithFormat:@"Action_%@:", actionName];
    
    Class targetClass = NSClassFromString(targetClassString);
    id target = [[targetClass alloc] init];
    SEL action = NSSelectorFromString(actionString);
    
    if (!target) {
        NSLog(@"%@模块对应的%@文件没有找到，需要调用的方法：%@,请检查是否正确引入对应的模块！", targetName, targetClassString, actionString);
        return nil;
    }
    
    if ([target respondsToSelector:action]) { // 正常调用
        
        return [target performSelector:action withObject:params];
        
    } else {
        // 这里是处理无响应请求的地方，如果无响应，则尝试调用对应target的notFound方法统一处理
        SEL action = NSSelectorFromString(@"notFound:");
        
        if ([target respondsToSelector:action]) {
            
            return [target performSelector:action withObject:params];
            
        } else {
            NSLog(@"%@模块对应的%@文件没有找到，需要调用的方法：%@,请检查是否正确引入对应的模块！", targetName, targetClassString, actionString);
            return nil;
        }
    }
}


@end

#pragma clang diagnostic pop
