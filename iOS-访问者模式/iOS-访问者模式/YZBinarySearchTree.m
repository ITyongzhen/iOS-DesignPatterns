//
//  YZBinarySearchTree.m
//  iOS-访问者模式
//
//  Created by eagle on 2019/10/21.
//  Copyright © 2019 eagle. All rights reserved.
//

#import "YZBinarySearchTree.h"

@interface YZBinarySearchTree()
@property (strong, nonatomic) YZTreeNode * node;
@property (strong, nonatomic) YZTreeNode * root;
@end


@implementation YZBinarySearchTree

-(void)add:(int)element{
    
}

-(void)inorder:(Visitor *)visitor{
    if (visitor == nil) {
        return;
    }
    [self inorder:visitor withNode:root];
}
-(void)inorder:(Visitor *)visitor withNode:(YZTreeNode *)node{
    if (Visitor == nil) {
        return;
    }
    
}
@end
