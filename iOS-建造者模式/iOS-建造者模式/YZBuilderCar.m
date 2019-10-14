//
//  YZProductCar.m
//  iOS-建造者模式
//
//  Created by eagle on 2019/8/8.
//  Copyright © 2019 yongzhen. All rights reserved.
//

#import "YZBuilderCar.h"

@interface YZBuilderCar()
@end


@implementation YZBuilderCar

- (NSString *)description{
    return [NSString stringWithFormat:@"我是一辆:%@ 车 价格:%@",self.name,self.price];
}

- (YZProductCar *)makeCar{
    YZBuilderCar *car = [[YZBuilderCar alloc] init];
    car.name = self.name;
    car.price = self.price;
    return  car;
}

@end
