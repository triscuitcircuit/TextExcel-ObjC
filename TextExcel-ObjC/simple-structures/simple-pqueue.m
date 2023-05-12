//
//  simple-pqueue.m
//  TextExcel-ObjC
//
//  Created by Tristan Zippert on 5/11/23.
//

#import "simple-pqueue.h"
#import "PriorityQueueNode.h"

@implementation simple_pqueue
-(BOOL) insert{
    return TRUE;
}

- (instancetype)init {
    self = [super init];
    if(self)
        _front = nil;
    return self;
}

- (BOOL)isEmpty {
    return TRUE;
}

- (NSInteger)size {
    return 0;
}

- (nonnull id<NSComparisonMethods,NSObject>)dequeue {
    if(_front){
        self.size -=1; 
        id object = _front.object;
        _front = _front.next;
        return object;
    }
    return nil;
}




- (BOOL)enqueue:(nonnull id<NSObject>)object withPriority:(NSInteger)priority {
    _front = [self enqueueNode:_front withObject:object priority:priority];
    self.size += 1;
    return TRUE;
}
-(PriorityQueueNode*)enqueueNode:(PriorityQueueNode*)node withObject:(id<NSObject>)object priority:(NSInteger)priority{
    if(!node || priority < node.priority){
        PriorityQueueNode *newNode = [[PriorityQueueNode alloc] initWithType:object priority:priority];
        newNode.next = node;
        return newNode;
    }else{
        node.next = [self enqueueNode:node.next withObject:object priority:priority];
        return node;
    }
}

@end
