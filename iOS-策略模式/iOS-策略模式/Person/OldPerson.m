//
//  OldPerson.m
//  iOS-策略模式
//
//  Created by eagle on 2019/7/9.
//  Copyright © 2019 yongzhen. All rights reserved.
//

#import "OldPerson.h"
#import "RunTwoHours.h"
#import "EatVegetables.h"
@implementation OldPerson
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.eat = [[EatVegetables alloc] init];
        self.run = [[RunTwoHours alloc] init];
        NSLog(@"我是老人");
    }
    return self;
}
@end
