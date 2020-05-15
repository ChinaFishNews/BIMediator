//
//  Target_Speech.m
//  BIMediator
//
//  Created by xinwen on 2020/5/15.
//  Copyright © 2020 baidu. All rights reserved.
//

#import "Target_Speech.h"
#import "BISpeechController.h"
#import "BISpeechReusePool.h"

@implementation Target_Speech

- (UIViewController *)Action_BISpeechController:(NSDictionary *)params {
    BISpeechController *speechController;
    if ([params[@"reuse"] boolValue]) {
        // 从重用池获取
        speechController = [[BISpeechReusePool sharedInstance].reusePool objectForKey:@"BISpeechController"];
    }
    
    if (!speechController) {
        speechController = [[BISpeechController alloc] init];
        speechController.postParams = params;
        if ([params[@"reuse"] boolValue]) {
            [[BISpeechReusePool sharedInstance].reusePool setObject:speechController forKey:@"BISpeechController"];
        }
    }
    return speechController;
}

@end
