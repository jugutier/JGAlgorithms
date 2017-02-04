//
//  JGList_Protected.h
//  Pods
//
//  Created by Julian Gutierrez on 2/1/17.
//
//

#import "JGTree.h"
#import <Foundation/Foundation.h>

#pragma mark JGTreeNode
//Inner class for the tree's internals.
@interface JGTreeNode : NSObject

@property(nonatomic, retain) id data;
@property(nonatomic,retain) JGTreeNode * left;
@property(nonatomic,retain) JGTreeNode * right;

@end

@implementation JGTreeNode

@synthesize data = _data;
@synthesize left = _left;
@synthesize right = _right;

@end

#pragma mark - JGTree+Protected

@interface JGTree (Protected)

- (void)setRoot:(JGTreeNode *)root;

@end
