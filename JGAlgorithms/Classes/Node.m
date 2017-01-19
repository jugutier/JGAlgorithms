//
//  Node.m
//  JGAlgorithms
//
//  Created by Julian Gutierrez on 12/20/16.
//  Copyright © 2016 JGAlgorithms. All rights reserved.
//

#import "Node.h"

@implementation Node

- (instancetype)initWithData:(id)data
{
    self = [super init];
    if (self) {
        _data = data;
    }
    return self;
}

@end
