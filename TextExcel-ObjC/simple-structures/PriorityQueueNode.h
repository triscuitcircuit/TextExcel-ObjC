//
// Created by Tristan Zippert on 5/11/23.
//

#import <Foundation/Foundation.h>


@interface PriorityQueueNode: NSObject

@property(nonatomic, strong) id object;
@property (nonatomic, assign) NSInteger priority;
@property (nonatomic, strong) PriorityQueueNode *next;

-(instancetype)initWithType:(id)object priority:(NSInteger)priority;
@end
