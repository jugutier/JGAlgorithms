//
//  JGTreeNode.h
//  Pods
//
//  Created by Julian Gutierrez on 1/18/17.
//
//

#import <Foundation/Foundation.h>

@interface JGTreeNode : NSObject

@property(nonatomic, retain) id data;
@property(nonatomic,retain) JGTreeNode * left;
@property(nonatomic,retain) JGTreeNode * right;

@end
