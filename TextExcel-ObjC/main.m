//
//  main.m
//  TextExcel-ObjC
//
//  Created by Tristan Zippert on 5/10/23.
//
//

#import <Foundation/Foundation.h>
#import "Spreadsheet.h"
#import "simple-pqueue.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // TODO: Unit tests
        simple_pqueue* test = [[simple_pqueue alloc] init];
        [test enqueue:@"test" withPriority:1];
        [test enqueue:@"test2" withPriority:2];
        [test enqueue:@"test3" withPriority:-2];
        NSLog(@"%ld",(long)[test size]);
        NSLog(@"%@",[test dequeue]);


        Spreadsheet* allocated_sheet = [[Spreadsheet alloc]init];
//        Read in from the standard input
//        Standard Input is a file (everything is a file with Unix)
        NSFileHandle *handle = [NSFileHandle fileHandleWithStandardInput];
        while (TRUE) {
            NSString* inputString = [[NSString alloc] initWithData:[handle availableData] encoding:NSUTF8StringEncoding];
//            Strip the carriage return out of the input (its evil)
            inputString = [[inputString stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]] uppercaseString];
            [allocated_sheet processCommand:inputString];
            


        }
    }
    return 0;

}
