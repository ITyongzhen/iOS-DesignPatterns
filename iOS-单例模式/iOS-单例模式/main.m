//
//  main.m
//  iOS-单例模式
//
//  Created by eagle on 2019/7/13.
//  Copyright © 2019 yongzhen. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "YZPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        [YZPerson sharedInstance];
        [YZPerson sharedInstance];
        [YZPerson sharedInstance];
        [YZPerson sharedInstance];
        [YZPerson sharedInstance];
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
