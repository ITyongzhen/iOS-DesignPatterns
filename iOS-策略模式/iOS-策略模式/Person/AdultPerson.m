//
//  AdultPerson.m
//  iOS-策略模式
//
//  Created by eagle on 2019/7/8.
//  Copyright © 2019 yongzhen. All rights reserved.
//

#import "AdultPerson.h"
#import "EatMeat.h"
#import "RunTwoHours.h"

@implementation AdultPerson
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.eat = [[EatMeat alloc] init];
        self.run = [[RunTwoHours alloc] init];
        NSLog(@"我是大人");
    }
    return self;
}
@end
