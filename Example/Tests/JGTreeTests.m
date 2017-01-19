//
//  Algo_DSTests.m
//  Algo-DSTests
//
//  Created by Julian Gutierrez Ferrara on 1/6/17.
//  Copyright (c) 2017 Julian Gutierrez Ferrara. All rights reserved.
//

#import <XCTest/XCTest.h>

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
    
    JGTreeNode * F = [[JGTreeNode alloc] init];
    F.data = @"F";
    JGTreeNode * B = [[JGTreeNode alloc] init];
    B.data = @"B";
    JGTreeNode * G = [[JGTreeNode alloc] init];
    G.data = @"G";
    JGTreeNode * A = [[JGTreeNode alloc] init];
    A.data = @"A";
    JGTreeNode * D = [[JGTreeNode alloc] init];
    D.data = @"D";
    JGTreeNode * I = [[JGTreeNode alloc] init];
    I.data = @"I";
    JGTreeNode * C = [[JGTreeNode alloc] init];
    C.data = @"C";
    JGTreeNode * E = [[JGTreeNode alloc] init];
    E.data = @"E";
    JGTreeNode * H = [[JGTreeNode alloc] init];
    H.data = @"H";
    
    F.left = B;
    F.right = G;
    B.left = A;
    B.right = D;
    D.left = C;
    D.right = E;
    G.right = I;
    I.left = H;
    
    /**
     * This is to initialize the tree without going into any of it's
     * internal mechanisms of criteria-adding. It will ensure that the
     * transverse test are consistent to the tree schematics up in the 
     * header withouth adding any noise. However, this will need to be
     * resolved differently and the JGTreeNode set to private again.
     */
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
    //TODO: Finish comparator implementation.
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
