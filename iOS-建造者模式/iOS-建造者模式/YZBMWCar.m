//
//  YZBMWCar.m
//  iOS-建造者模式
//
//  Created by eagle on 2019/10/12.
//  Copyright © 2019 yongzhen. All rights reserved.
//

#import "YZBMWCar.h"

@implementation YZBMWCar
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"宝马740Li";
        self.price = @"98万";
    }
    return self;
}

@end
