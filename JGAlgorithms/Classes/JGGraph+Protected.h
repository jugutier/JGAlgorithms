//
//  JGGraph+Protected.h
//  Pods
//
//  Created by Julian Gutierrez on 2/1/17.
//
//

#import "JGGraph.h"

#pragma mark - JGGraphVertex
@interface JGGraphVertex : NSObject

@property (nonatomic, retain) id data;
@property (nonatomic, retain) NSMutableArray * neighbors;

@end

@implementation JGGraphVertex

- (instancetype)initWithData:(id)data
{
    self = [super init];
    if (self) {
        _data = data;
        _neighbors = [NSMutableArray array];
    }
    return self;
}

- (BOOL)isEqual:(id)other
{
    if (other == self) {
        return YES;
    } else if (![super isEqual:other]) {
        return NO;
    } else {
        return [_data isEqual:other];
    }
}

- (NSUInteger)hash
{
    return [_data hash];
}

@end

#pragma mark - JGGraphEdge
@interface JGGraphEdge : NSObject

@property (nonatomic, retain) id weight;
@property (nonatomic, retain) JGGraphVertex * v;

@end

@implementation JGGraphEdge

@end

#pragma mark - JGGraph
@interface JGGraph (Protected)

@end
