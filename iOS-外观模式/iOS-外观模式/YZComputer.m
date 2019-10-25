//
//  YZComputer.m
//  iOS-外观模式
//
//  Created by eagle on 2019/10/18.
//  Copyright © 2019 eagle. All rights reserved.
//

#import "YZComputer.h"

@interface YZComputer()
@property (strong, nonatomic) YZQQ * qq;
@property (strong, nonatomic) YZWeChat * weChat;
@property (strong, nonatomic) YZXcode * xcode;
@end

@implementation YZComputer

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.qq = [[YZQQ alloc] init];
        self.weChat = [[YZWeChat alloc]init];
        self.xcode = [[YZXcode alloc]init];
    }
    return self;
}

-(void)close{
    NSLog(@"%s",__func__);
    [self.qq close];
    [self.weChat close];
    [self.xcode close];
}
-(void)open{
    NSLog(@"%s",__func__);
    [self.qq open];
    [self.weChat open];
    [self.xcode open];
}
@end
