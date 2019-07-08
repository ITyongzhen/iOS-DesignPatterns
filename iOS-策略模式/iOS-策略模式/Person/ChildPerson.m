//
//  Child.m
//  iOS-策略模式
//
//  Created by eagle on 2019/7/8.
//  Copyright © 2019 yongzhen. All rights reserved.
//

#import "ChildPerson.h"
#import "EatVegetables.h"
#import "RunOneHour.h"
@implementation ChildPerson

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.eat = [[EatVegetables alloc] init];
        self.run = [[RunOneHour alloc] init];
        NSLog(@"我是小孩");
    }
    return self;
}
@end
