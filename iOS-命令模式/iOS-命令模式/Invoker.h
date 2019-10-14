//
//  Invoker.h
//  iOS-命令模式
//
//  Created by eagle on 2019/10/14.
//  Copyright © 2019 eagle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"

@interface Invoker : NSObject

+ (instancetype)sharedInstance;

// 回退指令
- (void)rollBack;

// 添加操作指令
- (void)addAndExcute:(id <CommandProtocol>)command;

@end

