//
//  ListTests.m
//  Algo-DS
//
//  Created by Julian Gutierrez Ferrara on 1/8/17.
//  Copyright (c) 2017 Julian Gutierrez Ferrara. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface JGListTests : XCTestCase

@end

@implementation JGListTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    int array [] = {1 ,2 ,3, 4, 5};
    int length = 5;
    
    for (int i = 0; i < length; i++) {
        NSLog( @"%d", array[i]);
    }
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
