//
//  JGGraphVertex.m
//  Pods
//
//  Created by Julian Gutierrez on 2/4/17.
//
//

#import "JGGraphVertex.h"

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
    return [_data isEqual:other];
}

- (NSUInteger)hash
{
    return [_data hash];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"[data = %@, neighbors = %@ ]", _data, _neighbors];
}

@end
