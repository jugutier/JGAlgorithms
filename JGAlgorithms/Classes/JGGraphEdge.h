//
//  JGGraphEdge.h
//  Pods
//
//  Created by Julian Gutierrez on 2/4/17.
//
//
#import "JGGraphVertex.h"

@interface JGGraphEdge : NSObject

@property (nonatomic, retain) id weight;
@property (nonatomic, retain) JGGraphVertex * v;

@end
