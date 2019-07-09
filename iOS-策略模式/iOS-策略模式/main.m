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
#import "OldPerson.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Person *child = [[ChildPerson alloc] init];
        [child eatSomeThing];
        [child runEveryDay];
        
        Person *adult = [[AdultPerson alloc] init];
        [adult eatSomeThing];
        [adult runEveryDay];
        
        Person *old = [[OldPerson alloc] init];
        [old eatSomeThing];
        [old runEveryDay];
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
