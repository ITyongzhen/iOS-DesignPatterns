//
//  main.m
//  iOS-策略模式
//
//  Created by eagle on 2019/7/8.
//  Copyright © 2019 yongzhen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "ChildPerson.h"
#import "AdultPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        策略模式定义了算法族，分别封装起来，让它们之间可以互相替换，此模式让算法的变化独立于使用算法的客户。——《Head First 设计模式》
        Person *child = [[ChildPerson alloc] init];
        [child eatSomeThing];
        [child runEveryTime];
        
        Person *adult = [[AdultPerson alloc] init];
        [adult eatSomeThing];
        [adult runEveryTime];
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
