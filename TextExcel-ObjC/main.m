//
//  main.m
//  TextExcel-ObjC
//
//  Created by Tristan Zippert on 5/10/23.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        Read in from the standard input
//        Standard Input is a file (everything is a file with Unix)
        NSFileHandle *handle = [NSFileHandle fileHandleWithStandardInput];
        while (TRUE) {
            NSString* inputString = [[NSString alloc] initWithData:[handle availableData] encoding:NSUTF8StringEncoding];
//            Strip the carriage return out of the input (its evil)
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
//            Test print using fprintf. Cast to UTF8 String
            fprintf(stdout, "Entered Command: %s \n",[inputString UTF8String]);
        }
    }
    return 0;

}
