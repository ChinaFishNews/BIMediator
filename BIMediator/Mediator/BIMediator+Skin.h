//
//  BIMediator+Skin.h
//  BIMediator
//
//  Created by xinwen on 2020/5/14.
//  Copyright © 2020 baidu. All rights reserved.
//  皮肤模块对应支持接口

#import <UIKit/UIKit.h>
#import "BIMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface BIMediator (Skin)

// 皮肤详情页
- (UIViewController *)mediator_skinDetailControllerWithParams:(NSDictionary *)params;


/*
- (UITableViewCell *)mediator_skinCellWithParams:(NSDictionary *)params;
 
- (void)mediator_presentImage:(UIImage *)image;
 
- (void)mediator_showAlertWithMessage:(NSString *)message
                           completion:(void(^)(NSDictionary *info))completion;

*/

// 未必一定以分类的形式，只是为了方便调用performTarget方法


@end

NS_ASSUME_NONNULL_END
