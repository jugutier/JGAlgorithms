//
//  JGTreeNode.h
//  Pods
//
//  Created by Julian Gutierrez on 2/4/17.
//
//

@interface JGTreeNode : NSObject

@property(nonatomic, retain) id data;
@property(nonatomic,retain) JGTreeNode * left;
@property(nonatomic,retain) JGTreeNode * right;

@end
