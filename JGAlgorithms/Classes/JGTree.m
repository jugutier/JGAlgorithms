//
//  Tree.m
//  JGAlgorithms
//
//  Created by Julian Gutierrez Ferrara on 12/20/16.
//  Copyright (c) 2017 Julian Gutierrez Ferrara. All rights reserved.
//

#import "JGTree.h"
#import "JGTree+Protected.h"

@interface JGTree (){
    
}

@property(nonatomic,retain) JGTreeNode * root;

@end

@implementation JGTree

-(void)add:(id)element
{
    JGTreeNode * node = [[JGTreeNode alloc]init];
    if(!_comparator)
    {
        node.data = element;
        node.left = _root;
        _root = node;
    }
    else
    {
        [self addOrdered:node];
    }
}

-(void) addOrdered:(id) data
{
//    if(_comparator(node.data, node.data) == NSOrderedAscending)
//    {
//     
//    }
//    else if(_comparator(node.data, node.data) == NSOrderedDescending)
//    {
//     
//    }
//    else
//    {
//     
//    }
}

//left, me, right
-(NSArray *) inOrder
{
    NSMutableArray * ret = [NSMutableArray array];
    
    [self inOrderWithArray:ret andNode:_root];
    
    return [ret copy];
}

-(void) inOrderWithArray:(NSMutableArray *) arr andNode:(JGTreeNode *)node
{
    
    if(node.left)
    {
       [self inOrderWithArray:arr andNode:node.left];
    }
    
    if(node.data)
    {
        [arr addObject:node.data];
    }
    
    if(node.right)
    {
        [self inOrderWithArray:arr andNode:node.right];
    }
    
    
}

//left , right, me
-(NSArray *) postOrder
{
    NSMutableArray * ret = [NSMutableArray array];
    
    [self postOrderWithArray:ret andNode:_root];

    return [ret copy];
}

-(void) postOrderWithArray:(NSMutableArray *) arr andNode:(JGTreeNode *)node
{
    if(node.left)
    {
        [self inOrderWithArray:arr andNode:node.left];
    }
    
    if(node.right)
    {
        [self inOrderWithArray:arr andNode:node.right];
    }
    
    if(node.data)
    {
        [arr addObject:node.data];
    }
}

//me , left, right.
-(NSArray *) preOrder
{
    NSMutableArray * ret = [NSMutableArray array];
    
    [self preOrderWithArray:ret andNode:_root];
    
    return [ret copy];
}

-(void) preOrderWithArray:(NSMutableArray *) arr andNode:(JGTreeNode *)node
{
    if(node.data)
    {
        [arr addObject:node.data];
    }
    
    if(node.left)
    {
        [self inOrderWithArray:arr andNode:node.left];
    }
    
    if(node.right)
    {
        [self inOrderWithArray:arr andNode:node.right];
    }    
}

@end
