//
//  ViewController.m
//  iOS-生产者消费者
//
//  Created by eagle on 2019/7/9.
//  Copyright © 2019 yongzhen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) NSMutableArray *array;//存放数据
@property (nonatomic,strong) dispatch_semaphore_t semaphore;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //开启计时器
    NSTimer *curTimer =[NSTimer timerWithTimeInterval:0.1 target:self selector:@selector(producerFuncWithNumber:) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:curTimer forMode:NSDefaultRunLoopMode];
    [curTimer fire];
    
    [self consumerFunc];
}

-(void)reload{
    NSLog(@"休眠2秒");
    sleep(2);
}
- (NSMutableArray *)array{
    if (!_array) {
        _array = [NSMutableArray array];
    }
    return  _array;
}

- (dispatch_semaphore_t)semaphore{
    if (!_semaphore) {
        _semaphore = dispatch_semaphore_create(1);
    }
    return _semaphore;
}

//生产者
- (void)producerFuncWithNumber:(NSInteger )number{
    
    number = random()%10;
    //生产者生成数据
    dispatch_queue_t t = dispatch_queue_create("222222", DISPATCH_QUEUE_CONCURRENT);
    
    dispatch_async(t, ^{
        dispatch_semaphore_wait(self.semaphore, DISPATCH_TIME_FOREVER);
        
        [self.array addObject:[NSString stringWithFormat:@"%ld",(long)number]];
        NSLog(@"生产了%lu 个",(unsigned long)self.array.count);
        dispatch_semaphore_signal(self.semaphore);
        
    });
}

//消费者
- (void)consumerFunc{
    
    dispatch_queue_t t1 = dispatch_queue_create("11111", DISPATCH_QUEUE_CONCURRENT);
    
    dispatch_async(t1, ^{
        
        while (YES) {
            if (self.array.count > 0) {
                dispatch_semaphore_wait(self.semaphore, DISPATCH_TIME_FOREVER);
                NSLog(@"消费了%lu 个",(unsigned long)self.array.count);
                [self.array removeAllObjects];
                [self reload];
                dispatch_semaphore_signal(self.semaphore);
                
            }
        }
    });
}
@end
