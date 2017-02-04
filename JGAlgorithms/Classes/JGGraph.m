//
//  JGGraph.m
//  Pods
//
//  Created by Julian Gutierrez on 1/31/17.
//
//

#import "JGGraph.h"
#import "JGGraph+Protected.h"

@interface JGGraph (){
    
}
@property (nonatomic,retain) NSMutableArray * vertexes;
@end

@implementation JGGraph

-(BOOL)isAdjacentVertex:(id)x to:(id)y
{
    NSArray * neighborsOfX = [self neighbors:x];
    JGGraphVertex* vy = [[JGGraphVertex alloc] initWithData:y];
    return [neighborsOfX containsObject:vy];
}

-(NSArray *)neighbors:(id)x
{
    NSArray * ret = nil;
    JGGraphVertex* vx = [[JGGraphVertex alloc] initWithData:x];
    for (JGGraphVertex * vertex in _vertexes)
    {
        if ([vertex isEqual:vx])
        {
            ret = vertex.neighbors;
        }
    }
    
    return ret;
}

-(void)addVertex:(id)x
{
    JGGraphVertex* vx = [[JGGraphVertex alloc] initWithData:x];
    if (![_vertexes containsObject:vx])
    {
        [_vertexes addObject:vx];
    }
}

-(void)removeVertex:(id)x
{
    JGGraphVertex* v = [[JGGraphVertex alloc] initWithData:x];
    if (![_vertexes containsObject:v])
    {
        [_vertexes removeObject:v];
    }
}

-(void)addEdgeFromVertex:(id)x to:(id)y
{
    JGGraphVertex* vx = [[JGGraphVertex alloc] initWithData:x];
    JGGraphVertex* vy = [[JGGraphVertex alloc] initWithData:y];
    
     if (![_vertexes containsObject:vx] ||
         ![_vertexes containsObject:vy])
     {
         NSLog(@"One of the two vertexes doesn't exist in the graph");
         return;
     }
    
    for (JGGraphVertex * vertex in _vertexes)
    {
        if ([vertex isEqual:vx])
        {
            [vertex.neighbors addObject:vy];
        }
        
        if ([vertex isEqual:vy])
        {
            [vertex.neighbors addObject:vx];
        }
    }
    
}

-(void)removeEdgeFromVertex:(id)x to:(id)y
{
    JGGraphVertex* vx = [[JGGraphVertex alloc] initWithData:x];
    JGGraphVertex* vy = [[JGGraphVertex alloc] initWithData:y];
    
    if (![_vertexes containsObject:vx] ||
        ![_vertexes containsObject:vy])
    {
        NSLog(@"One of the two vertexes doesn't exist in the graph");
        return;
    }
    
    for (JGGraphVertex * vertex in _vertexes)
    {
        if ([vertex isEqual:vx])
        {
            [vertex.neighbors removeObject:vy];
        }
        
        if ([vertex isEqual:vy])
        {
            [vertex.neighbors removeObject:vx];
        }
    }
    
 
}

@end
