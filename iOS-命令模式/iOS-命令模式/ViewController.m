//
//  ViewController.m
//  iOS-命令模式
//
//  Created by eagle on 2019/10/14.
//  Copyright © 2019 eagle. All rights reserved.
//

#import "ViewController.h"
#import "Receiver.h"
#import "reduceCommand.h"
#import "Invoker.h"
#import "amplifyCommand.h"
#import "CommandProtocol.h"
#define  kccWidth [UIScreen mainScreen].bounds.size.width;


@interface ViewController ()
@property (strong, nonatomic) UIView * redView;
@property (strong, nonatomic) Receiver * receiver;
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    CGPoint centerPoint =  CGPointMake(self.view.bounds.size.width/2, self.view.bounds.size.height/2);
    self.redView = [[UIView alloc]initWithFrame:CGRectMake(centerPoint.x - 50/2,centerPoint.y - 50/2, 50, 50)];
    self.redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.redView];
    
    self.receiver = [[Receiver alloc]init];
    self.receiver.redView = self.redView;
    self.receiver.width = 50;
}



/// 扩大
/// @param sender 扩大按钮
- (IBAction)amplify:(UIButton *)sender {
    
    amplifyCommand *command = [[amplifyCommand alloc]initWithReceiver:self.receiver paramter:10];
    [[Invoker sharedInstance] addAndExcute:command];
}
/// 缩小
/// @param sender  缩小按钮
- (IBAction)reduce:(UIButton *)sender {
      reduceCommand *command = [[reduceCommand alloc]initWithReceiver:self.receiver paramter:10];
       [[Invoker sharedInstance] addAndExcute:command];
    
}

/// 回退
/// @param sender 回退按钮
- (IBAction)rollback:(UIButton *)sender {
    // 回退操作
    [[Invoker sharedInstance] rollBack];
    
}

@end
