//
//  reduceCommand.h
//  iOS-命令模式
//
//  Created by eagle on 2019/10/14.
//  Copyright © 2019 eagle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"
#import "Receiver.h"

@interface reduceCommand : NSObject<CommandProtocol>
// 绑定接收器
- (instancetype)initWithReceiver:(Receiver *)receiver paramter:(CGFloat)paramter;
@end

