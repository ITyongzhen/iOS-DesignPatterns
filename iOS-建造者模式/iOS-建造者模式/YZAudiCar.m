//
//  YZAudiCar.m
//  iOS-建造者模式
//
//  Created by eagle on 2019/10/12.
//  Copyright © 2019 yongzhen. All rights reserved.
//

#import "YZAudiCar.h"

@implementation YZAudiCar
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"奥迪Q5";
        self.price = @"45万";
    }
    return self;
}

@end
