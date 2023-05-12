//
//  pqueue-test.m
//  TextExcel-ObjC
//
//  Created by Tristan Zippert on 5/12/23.
//

#import <XCTest/XCTest.h>
#import "simple-pqueue.h"
#include <stdlib.h>

@interface pqueue_test : XCTestCase

@end

@implementation pqueue_test

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    simple_pqueue* test = [[simple_pqueue alloc] init];
    
    XCTAssertTrue([test isEmpty]);
    
    int random_value =arc4random_uniform(74);
    
    for(int i =0; i < random_value; ++i){
        NSString* node_name = [[NSString alloc] initWithFormat:@"node%d", i];
        [test enqueue:node_name withPriority:random_value*(-1)];
    }

    XCTAssertEqual((int)[test size], random_value);
    [test dequeue];
    XCTAssertEqual((int)[test size], random_value-1);


}

- (void)removeTest {
    

    simple_pqueue* test = [[simple_pqueue alloc] init];

    [test enqueue:@"node1" withPriority:-1];
    [test enqueue:@"node2" withPriority:-2];
    [test enqueue:@"node3" withPriority:-2];
    [test enqueue:@"node4" withPriority:-4];

//    XCTAssertEqualObjects(([test dequeue], );

}

- (void)testPerformanceExample {
    simple_pqueue* test = [[simple_pqueue alloc] init];
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
        [test enqueue:@"test" withPriority:1];
        [test enqueue:@"test2" withPriority:2];
        [test enqueue:@"test3" withPriority:-2];

    }];
}

@end
