//
//  amplifyCommand.m
//  iOS-命令模式
//
//  Created by eagle on 2019/10/14.
//  Copyright © 2019 eagle. All rights reserved.
//

#import "amplifyCommand.h"

@interface amplifyCommand()
@property (nonatomic, strong) Receiver *receiver;
@property (nonatomic, assign) CGFloat paramter;
@end


@implementation amplifyCommand

- (instancetype)initWithReceiver:(Receiver *)receiver paramter:(CGFloat)paramter{
    self = [super init];
       if (self) {
           
           self.receiver = receiver;
           self.paramter = paramter;
       }
       return self;
}


// 执行命令
- (void)excute {
    [self.receiver amplifyView:self.paramter];
}

// 撤销命令
- (void)backExcute {
    [self.receiver reduceView:self.paramter];
}
@end
