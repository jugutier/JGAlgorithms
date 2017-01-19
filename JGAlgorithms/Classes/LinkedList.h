//
//  LinkedList.h
//  JGAlgorithms
//
//  Created by Julian Gutierrez on 1/8/17.
//  Copyright © 2017 JGAlgorithms. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol List

-(id)elementAtIntex:(NSUInteger) index;
-(void)remove:(id)element;
-(void)add:(id)element;
-(NSUInteger) count;

@end

@interface LinkedList : NSObject <List>

@end
