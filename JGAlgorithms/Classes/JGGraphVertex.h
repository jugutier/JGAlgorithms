//
//  JGGraphVertex.h
//  Pods
//
//  Created by Julian Gutierrez on 2/4/17.
//
//

@interface JGGraphVertex : NSObject

@property (nonatomic, retain) id data;
@property (nonatomic, retain) NSMutableArray * neighbors;

//Default initializer
- (instancetype)initWithData:(id)data;

@end
