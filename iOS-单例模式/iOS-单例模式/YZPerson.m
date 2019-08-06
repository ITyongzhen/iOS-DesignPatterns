//
//  YZPerson.m
//  iOS-单例模式
//
//  Created by eagle on 2019/7/13.
//  Copyright © 2019 yongzhen. All rights reserved.
//

#import "YZPerson.h"
#define SYNTHESIZE_SINGLETON_FOR_CLASS_HEADER(className) \
\
+ (className *)sharedInstance;

#define SYNTHESIZE_SINGLETON_FOR_CLASS(className) \
\
+ (className *)sharedInstance { \
static className *sharedInstance = nil; \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
sharedInstance = [[self alloc] init]; \
}); \
return sharedInstance; \
}
@implementation YZPerson

SYNTHESIZE_SINGLETON_FOR_CLASS(YZPerson)
//+ (instancetype)sharedInstance
//{
//    static dispatch_once_t onceToken = 0;
//    __strong static id _sharedObject = nil;
//    NSLog(@"before dispatch_once onceToken = %ld",onceToken);
//    dispatch_once(&onceToken, ^{
//          NSLog(@"before dispatch_once onceToken = %ld",onceToken);
//        _sharedObject = [[self alloc] init]; // or some other init method
//    });
//      NSLog(@"before dispatch_once onceToken = %ld",onceToken);
//    return _sharedObject;
//}
@end
