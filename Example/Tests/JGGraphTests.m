//
//  JGGraphTests.m
//  JGAlgorithms
//
//  Created by Julian Gutierrez on 2/1/17.
//  Copyright © 2017 Julian Gutierrez Ferrara. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface JGGraphTests : XCTestCase
@property (nonatomic,retain) JGGraph * g;
@end

@implementation JGGraphTests

- (void)setUp {
    [super setUp];
    _g = [[JGGraph alloc] init];
    [_g addVertex:@"A"];
    [_g addVertex:@"B"];
    [_g addVertex:@"C"];
    [_g addEdgeFromVertex:@"A" to:@"B"];
    [_g addEdgeFromVertex:@"B" to:@"C"];
    [_g addEdgeFromVertex:@"C" to:@"A"];
}

- (void)testNeighbors {
    NSArray * neighbors = [_g neighbors:@"A"];
    NSArray * expected = @[@"B",@"C"];
    for (id vertex in neighbors) {
        XCTAssert([expected containsObject:vertex],
                  @"Vertex not part of the expected results");
    }
}

@end
