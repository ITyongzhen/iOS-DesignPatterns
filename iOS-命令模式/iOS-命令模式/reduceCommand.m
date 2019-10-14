//
//  reduceCommand.m
//  iOS-命令模式
//
//  Created by eagle on 2019/10/14.
//  Copyright © 2019 eagle. All rights reserved.
//

#import "reduceCommand.h"

@interface reduceCommand()
@property (nonatomic, strong) Receiver *receiver;
@property (nonatomic, assign) CGFloat paramter;
@end


@implementation reduceCommand

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
    [self.receiver reduceView:self.paramter];
}

// 撤销命令
- (void)backExcute {
    [self.receiver amplifyView:self.paramter];
}
@end
