//
//  YZDirector.h
//  iOS-建造者模式
//
//  Created by eagle on 2019/8/8.
//  Copyright © 2019 yongzhen. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "YZBuilderCar.h"

@interface YZDirector : NSObject
// 建造一辆车
+ (YZProductCar *)creatBuickCar:(YZBuilderCar *)builder;
@end

