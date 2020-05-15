//
//  BIMediator+Speech.h
//  BIMediator
//
//  Created by xinwen on 2020/5/15.
//  Copyright © 2020 baidu. All rights reserved.
//  语音模块对应支持接口

#import "BIMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface BIMediator (Speech)

- (UIViewController *)mediator_speechControllerWithParams:(NSDictionary *)params
                                                    reuse:(BOOL)reuse;

@end

NS_ASSUME_NONNULL_END
