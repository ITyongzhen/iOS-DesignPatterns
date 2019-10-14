//
//  Receiver.h
//  iOS-命令模式
//
//  Created by eagle on 2019/10/14.
//  Copyright © 2019 eagle. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Receiver : NSObject
@property (assign, nonatomic) CGFloat width;
@property (strong, nonatomic) UIView * redView;

/// 扩大view
/// @param pamameter 边长
-(void)amplifyView:(CGFloat)pamameter;

/// 缩小view
/// @param pamameter 边长
-(void)reduceView:(CGFloat)pamameter;

@end


