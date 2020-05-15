//
//  Target_Skin.h
//  BIMediator
//
//  Created by xinwen on 2020/5/14.
//  Copyright © 2020 baidu. All rights reserved.
//  皮肤模块对外暴露的接口

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Target_Skin : NSObject

- (UIViewController *)Action_BISkinDetailController:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
