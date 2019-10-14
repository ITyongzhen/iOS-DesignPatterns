//
//  YZDirector.m
//  iOS-建造者模式
//
//  Created by eagle on 2019/8/8.
//  Copyright © 2019 yongzhen. All rights reserved.
//

#import "YZDirector.h"

@implementation YZDirector
+ (YZProductCar *)creatBuickCar:(YZBuilderCar *)builder{
    YZProductCar *car = [builder makeCar];
    return car;
}
@end
