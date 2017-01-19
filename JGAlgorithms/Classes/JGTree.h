//
//  JGTree.h
//  JGAlgorithms
//
//  Created by Julian Gutierrez Ferrara on 12/20/16.
//  Copyright (c) 2017 Julian Gutierrez Ferrara. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JGTree : NSObject

@property(nonatomic, copy) NSComparator comparator;

-(void)add:(id)element;

-(NSArray *) inOrder;
-(NSArray *) postOrder;
-(NSArray *) preOrder;
@end
