//
//  simple-pqueue.h
//  TextExcel-ObjC
//
//  Created by Tristan Zippert on 5/11/23.
//

#import <Foundation/Foundation.h>
#import "NSComparisonMethods.h"

@class PriorityQueueNode;

NS_ASSUME_NONNULL_BEGIN


@interface simple_pqueue : NSObject{
    PriorityQueueNode *_front;
}
@property (nonatomic, assign) NSInteger size;
-(instancetype)init;
-(BOOL) enqueue:(id<NSObject>)object withPriority:(NSInteger)priority;
-(id<NSComparisonMethods, NSObject>)dequeue;
- (NSInteger)size;
- (BOOL) isEmpty;

@end

NS_ASSUME_NONNULL_END
