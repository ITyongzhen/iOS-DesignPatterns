//
//  Receiver.m
//  iOS-命令模式
//
//  Created by eagle on 2019/10/14.
//  Copyright © 2019 eagle. All rights reserved.
//

#import "Receiver.h"
#define centerX [UIScreen mainScreen].bounds.size.width/2
#define centerY [UIScreen mainScreen].bounds.size.height/2
@implementation Receiver


-(void)amplifyView:(CGFloat)pamameter{
    _width += pamameter;
    _width = MIN(_width, [UIScreen mainScreen].bounds.size.width);
    _redView.frame = CGRectMake(centerX - _width/2,centerY - _width/2, _width, _width);
}

-(void)reduceView:(CGFloat)pamameter{
    _width -= pamameter;
    _width = MAX(_width, 30);
    _redView.frame = CGRectMake(centerX - _width/2,centerY - _width/2, _width, _width);
}

@end
