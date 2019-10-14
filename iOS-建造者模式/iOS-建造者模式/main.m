//
//  main.m
//  iOS-建造者模式
//
//  Created by eagle on 2019/8/8.
//  Copyright © 2019 yongzhen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YZBuilderCar.h"
#import "YZBMWCar.h"
#import "YZAudiCar.h"
#import "YZDirector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        YZBuilderCar *car = [[YZBMWCar alloc] init];
        YZDirector *dir = [YZDirector creatBuickCar:car];
        NSLog(@"%@",dir.description);
        
    }
    return 0;
}
