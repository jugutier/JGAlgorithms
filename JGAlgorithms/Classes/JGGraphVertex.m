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
