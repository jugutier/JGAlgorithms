//
//  LinkedList.m
//  JGAlgorithms
//
//  Created by Julian Gutierrez Ferrara on 1/8/17.
//  Copyright © 2017 JGAlgorithms. All rights reserved.
//

#import "LinkedList.h"

@interface ListNode : NSObject

@property (nonatomic, retain) id data;
@property (nonatomic,retain) ListNode * tail;

@end
@implementation ListNode

@end
@interface LinkedList(){
    ListNode * head;
    NSUInteger count;
}

@end
@implementation LinkedList

-(id)elementAtIntex:(NSUInteger) index
{
    if(index > count)
    {
        return nil;
    }
    return [self find:head index:index];
}

-(id)find:(ListNode *)node index:(NSUInteger)index
{
    if(index == 0)
    {
        return node.data;
    }
    return [self find:node.tail index:(index -1)];
}

-(void)add:(id)element
{
    ListNode * node = [[ListNode alloc]init];
    node.data = element;
    node.tail = head;
    head = node;
    count++;
}

-(void)remove:(id)element
{
    ListNode *previous = nil;
    ListNode *current = head;
    
    while(![current.data isEqual:element])
    {
        previous = current;
        current = current.tail;
        if(!current)
        {
            return ;
        }
        previous.tail = current.tail;
        current.tail = nil;
    }
    count--;
    
}

-(NSUInteger) count
{
    return count;
}

@end
