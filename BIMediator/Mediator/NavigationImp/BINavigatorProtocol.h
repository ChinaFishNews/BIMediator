//
//  BINavigatorProtocol.h
//  BIMediator
//
//  Created by xinwen on 2020/5/14.
//  Copyright © 2020 baidu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol BINavigatorProtocol <NSObject>

- (void)pushVC:(UIViewController *)destVC animated:(BOOL)animated;

@end

NS_ASSUME_NONNULL_END
