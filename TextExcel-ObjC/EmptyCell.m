//
//  EmptyCell.m
//  TextExcel-ObjC
//
//  Created by Tristan Zippert on 5/10/23.
//

#import "EmptyCell.h"

@implementation EmptyCell
- (nonnull NSString *)abbreviatedCellText {
    return [NSString stringWithFormat:@"%10s",""];
}

- (nonnull NSString *)fullCellText {
    return @"";
}
@end
