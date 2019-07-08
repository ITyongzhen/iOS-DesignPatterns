//
//  Person.m
//  iOS-策略模式
//
//  Created by eagle on 2019/7/8.
//  Copyright © 2019 yongzhen. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)eatSomeThing{
    [self.eat eatSomeThing];
}
- (void)runEveryTime{
    [self.run runEveryTime];
}
@end
