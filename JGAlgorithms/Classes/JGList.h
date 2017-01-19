//
//  JGList.h
//  JGAlgorithms
//
//  Created by Julian Gutierrez Ferrara on 1/18/17.
//  Copyright (c) 2017 Julian Gutierrez Ferrara. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol JGList

-(id)elementAtIntex:(NSUInteger) index;
-(void)remove:(id)element;
-(void)add:(id)element;
-(NSUInteger) count;

@end
