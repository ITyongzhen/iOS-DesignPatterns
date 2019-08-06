//
//  YZPerson.h
//  iOS-单例模式
//
//  Created by eagle on 2019/7/13.
//  Copyright © 2019 yongzhen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YZPerson : NSObject
+ (instancetype)sharedInstance;
@end

NS_ASSUME_NONNULL_END
