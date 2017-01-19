//
//  Node.h
//  JGAlgorithms
//
//  Created by Julian Gutierrez Ferrara on 12/20/16.
//  Copyright © 2016 JGAlgorithms. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Node : NSObject

@property(nonatomic, retain) id data;
@property(nonatomic,retain) Node * left;
@property(nonatomic,retain) Node * right;
@end
