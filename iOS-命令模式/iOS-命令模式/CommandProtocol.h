//
//  CommandProtocol.h
//  iOS-命令模式
//
//  Created by eagle on 2019/10/14.
//  Copyright © 2019 eagle. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol CommandProtocol <NSObject>
/// 执行命令
- (void)excute;

/// 撤销命令
- (void)backExcute;

@end

