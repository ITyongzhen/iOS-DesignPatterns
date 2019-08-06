//
//  ViewController.m
//  iOS-原型模式
//
//  Created by eagle on 2019/8/6.
//  Copyright © 2019 yongzhen. All rights reserved.
//

#import "ViewController.h"
#import "YZPerson.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    YZPerson *p1 = [[YZPerson alloc] init];
    p1.name = @"jack";
    p1.age = 10;
    
    
    YZPerson * p2 = [p1 copy];
//    p2.name = @"rose";
    NSLog(@"p1 = %@,p1.name = %@, p1.age = %d",p1,p1.name,p1.age);
    NSLog(@"p2 = %@,p2.name = %@, p2.age = %d",p2,p2.name,p2.age);
    // Do any additional setup after loading the view.
}


@end
