//
//  YZPerson.m
//  iOS-原型模式
//
//  Created by eagle on 2019/8/6.
//  Copyright © 2019 yongzhen. All rights reserved.
//

#import "YZPerson.h"

@implementation YZPerson

- (id)copyWithZone:(nullable NSZone *)zone{
    
    YZPerson *p = [[YZPerson allocWithZone:zone] init];
    p.name = self.name;
    p.age = self.age;
    return p;
}

@end
