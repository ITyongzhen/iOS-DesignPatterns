//
//  Person.h
//  iOS-策略模式
//
//  Created by eagle on 2019/7/8.
//  Copyright © 2019 yongzhen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Eat.h"
#import "Run.h"
@interface Person : NSObject

@property (nonatomic,strong) id<Eat> eat;
@property (nonatomic,strong) id<Run> run;
- (void)eatSomeThing;
- (void)runEveryDay;
@end

