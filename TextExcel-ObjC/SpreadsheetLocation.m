//
//  SpreadsheetLocation.m
//  TextExcel-ObjC
//
//  Created by Tristan Zippert on 5/11/23.
//

#import "SpreadsheetLocation.h"

@implementation SpreadsheetLocation



- (int)getCol {
    return _col;
}

- (int)getRow {
    return _row;
}

- (nonnull instancetype)init:(nonnull NSString *)cellname {
    self = [super init];
    if(self){
        _col = (int)[cellname characterAtIndex:0]-65;
        _row = [[cellname substringFromIndex:1]intValue]-1;
    }
    return self;
}

@end
