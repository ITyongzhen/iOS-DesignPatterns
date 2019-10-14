//
//  Invoker.m
//  iOS-命令模式
//
//  Created by eagle on 2019/10/14.
//  Copyright © 2019 eagle. All rights reserved.
//

#import "Invoker.h"

@interface Invoker()
@property (strong, nonatomic) NSMutableArray *mArr; //存储操作指令的数组

@end

@implementation Invoker


+ (instancetype)sharedInstance
{
  static dispatch_once_t onceToken;
     static Invoker *cls = nil;
     dispatch_once(&onceToken, ^{
         cls = [[[self class] alloc] init];
         cls.mArr = [[NSMutableArray alloc]init];
     });
     return cls;
}

- (void)rollBack{
    // 1.获取数组中的最后一个操作
      id <CommandProtocol> command = self.mArr.lastObject;
      
      // 2.操作调用,撤销的步骤
      [command backExcute];
      
      // 3.删除最后操作
      [self.mArr removeLastObject];
}

// 添加操作指令
- (void)addAndExcute:(id <CommandProtocol>)command {
    // 1.把操作添加到数组
    [self.mArr addObject:command];
    
    // 2.让操作调用实现的协议方法
    [command excute];
}

@end
