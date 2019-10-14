//
//  YZProductCar.h
//  iOS-建造者模式
//
//  Created by eagle on 2019/8/8.
//  Copyright © 2019 yongzhen. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface YZBuilderCar : NSObject
@property (nonatomic,   strong)NSString *name;// 名字
@property (nonatomic, strong)NSString *price;// 价格

-(YZBuilderCar *)makeCar;
@end

