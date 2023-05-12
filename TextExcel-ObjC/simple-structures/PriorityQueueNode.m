//
// Created by Tristan Zippert on 5/11/23.
//

#import "PriorityQueueNode.h"

@implementation PriorityQueueNode : NSObject



- (nonnull instancetype)initWithType:(nonnull id)object  priority:(NSInteger)priority {
    self = [super init];
    if (self){
        _object = object;
        _priority = priority;
        _next = nil;
    }
    return self;
}


@end
