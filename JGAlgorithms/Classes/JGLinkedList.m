//
//  JGLinkedList.m
//  JGAlgorithms
//
//  Created by Julian Gutierrez Ferrara on 1/8/17.
//  Copyright (c) 2017 Julian Gutierrez Ferrara. All rights reserved.
//

#import "JGLinkedList.h"

#pragma mark JGListNode -- Private
/**
 * Internal node class does not need to be offered
 * to the user of this library.
 */
@interface JGListNode : NSObject

@property (nonatomic, retain) id data;
@property (nonatomic,retain) JGListNode * tail;

@end

@implementation JGListNode
@end

#pragma mark JGLinkedList -- Implementation
@interface JGLinkedList()
{
    JGListNode * head;
    NSUInteger count;
}

@end
@implementation JGLinkedList

-(id)elementAtIntex:(NSUInteger) index
{
    if(index > count)
    {
        return nil;
    }
    return [self find:head index:index];
}

-(id)find:(JGListNode *)node index:(NSUInteger)index
{
    if(index == 0)
    {
        return node.data;
    }
    return [self find:node.tail index:(index -1)];
}

-(void)add:(id)element
{
    JGListNode * node = [[JGListNode alloc]init];
    node.data = element;
    node.tail = head;
    head = node;
    count++;
}

-(void)remove:(id)element
{
    JGListNode *previous = nil;
    JGListNode *current = head;
    
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
    
- (NSString *)description
{
    NSMutableString * buffer = [[NSMutableString alloc] init];
    
    JGListNode * current = head;
    [buffer appendString:@"["];
    while (current != nil)
    {
        [buffer appendString:[current.data description]];
        current = current.tail;
        if(current)
        {
            [buffer appendString:@","];
        }
    }
    [buffer appendString:@"]"];
    
    return [buffer description];
}

@end
