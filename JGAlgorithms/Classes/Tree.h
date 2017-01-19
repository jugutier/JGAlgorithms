//
//  Tree.h
//  JGAlgorithms
//
//  Created by Julian Gutierrez on 12/20/16.
//  Copyright © 2016 JGAlgorithms. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Node.h"

@interface Tree : NSObject

@property(nonatomic,retain) NSComparator comparator;

-(void)add:(id)element;

-(NSArray *) inOrder;
-(NSArray *) postOrder;
-(NSArray *) preOrder;
@end
