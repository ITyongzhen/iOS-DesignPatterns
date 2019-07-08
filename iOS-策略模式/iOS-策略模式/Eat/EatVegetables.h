//
//  EatVegetables.h
//  iOS-策略模式
//
//  Created by eagle on 2019/7/8.
//  Copyright © 2019 yongzhen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Eat.h"

@interface EatVegetables : NSObject<Eat>
- (void)eatSomeThing;
@end

