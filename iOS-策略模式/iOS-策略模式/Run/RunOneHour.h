//
//  RunOneHour.h
//  iOS-策略模式
//
//  Created by eagle on 2019/7/8.
//  Copyright © 2019 yongzhen. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Run.h"

@interface RunOneHour : NSObject<Run>
- (void)runEveryDay;
@end

