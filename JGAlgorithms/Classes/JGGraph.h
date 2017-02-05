//
//  JGGraph.h
//  Pods
//
//  Created by Julian Gutierrez on 1/31/17.
//
//

#import <Foundation/Foundation.h>

@interface JGGraph : NSObject

/**
 * Tests whether there is an edge from the vertices x to y
 */
-(BOOL)isAdjacentVertex:(id)x to:(id)y;
/**
 * Lists all vertices y such that there is an edge from the vertices x to y;
 */
-(NSArray *)neighbors:(id)x;
/**
 * Adds the vertex x, if it is not there;
 */
-(void)addVertex:(id)x;
/**
 * Removes the vertex x, if it is there;
 */
-(void)removeVertex:(id)x;
/**
 * Adds the edge from the vertices x to y, if it is not there;
 */
-(void)addEdgeFromVertex:(id)x to:(id)y;
/**
 * Removes the edge from the vertices x to y, if it is there;
 */
-(void)removeEdgeFromVertex:(id)x to:(id)y;

@end

//Not implemented:
//get_vertex_value(G, x): returns the value associated with the vertex x;
//set_vertex_value(G, x, v): sets the value associated with the vertex x to v.
//Structures that associate values to the edges usually also provide:[1]
//get_edge_value(G, x, y): returns the value associated with the edge (x, y);
//set_edge_value(G, x, y, v): sets the value associated with the edge (x, y) to v.
