//
//  Algo_DSTests.m
//  Algo-DSTests
//
//  Created by Julian Gutierrez Ferrara on 1/6/17.
//  Copyright (c) 2017 Julian Gutierrez Ferrara. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <JGAlgorithms/JGTree.h>

@interface JGTreeTests : XCTestCase
@property (nonatomic, retain) JGTree* tree;
@end

@implementation JGTreeTests

//https://en.wikipedia.org/wiki/Tree_traversal
// Current tree:
//
//       (F)
//     (B)    (G)
//  (A)  (D)    (I)
//      (C)(E) (H)

- (void)setUp {
    [super setUp];
    _tree = [[JGTree alloc] init];
    
    Node * F = [[JGTree alloc] init];
    F.data = @"F";
    Node * B = [[JGTree alloc] init];
    B.data = @"B";
    Node * G = [[JGTree alloc] init];
    G.data = @"G";
    Node * A = [[JGTree alloc] init];
    A.data = @"A";
    Node * D = [[JGTree alloc] init];
    D.data = @"D";
    Node * I = [[JGTree alloc] init];
    I.data = @"I";
    Node * C = [[JGTree alloc] init];
    C.data = @"C";
    Node * E = [[JGTree alloc] init];
    E.data = @"E";
    Node * H = [[JGTree alloc] init];
    H.data = @"H";
    
    F.left = B;
    F.right = G;
    B.left = A;
    B.right = D;
    D.left = C;
    D.right = E;
    G.right = I;
    I.left = H;
    
    [_tree performSelector: NSSelectorFromString(@"setRoot:")
                withObject: F
                afterDelay: 0
     ];
    
}

- (void)testOrderedInsert {
    [_tree add:@(2)];
    [_tree add:@(3)];
    [_tree add:@(4)];
    [_tree add:@(5)];
}

- (void)testInOrder {
    NSArray* result = [_tree inOrder];
    NSArray* expected = @[@"A", @"B", @"C", @"D", @"E", @"F", @"G", @"H", @"I"];
    for (int i = 0 ; i < [result count]; i++) {
        XCTAssert([result[i] isEqual:expected[i]]);
    }
}

- (void)testPostOrder {
    NSArray* result = [_tree postOrder];
    NSArray* expected = @[@"A", @"C", @"E", @"D", @"B", @"H", @"I", @"G", @"F"];
    for (int i = 0 ; i < [result count]; i++) {
        XCTAssert([result[i] isEqual:expected[i]]);
    }
}

- (void)testPreOrder {
    NSArray* result = [_tree preOrder];
    NSArray* expected = @[@"F", @"B", @"A", @"D", @"C", @"E", @"G", @"I", @"H"];
    for (int i = 0 ; i < [result count]; i++) {
        XCTAssert([result[i] isEqual:expected[i]]);
    }
}

@end
