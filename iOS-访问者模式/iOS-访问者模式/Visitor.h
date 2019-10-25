//
//  Visitor.h
//  iOS-访问者模式
//
//  Created by eagle on 2019/10/21.
//  Copyright © 2019 eagle. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Visitor : NSObject
@property (assign, nonatomic) BOOL visit;
@property (assign, nonatomic) BOOL stop;
@end

NS_ASSUME_NONNULL_END
