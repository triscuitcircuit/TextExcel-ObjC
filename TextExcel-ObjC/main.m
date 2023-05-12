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
