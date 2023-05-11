//
//  Spreadsheet.m
//  TextExcel-ObjC
//
//  Created by Tristan Zippert on 5/10/23.
//

#import "Spreadsheet.h"
#import "EmptyCell.h"
#import "Cell.h"
// Defines the main spreadsheet class that contains the 2D array

@implementation Spreadsheet

- (instancetype)init{
    self = [super init];
    if(self){
        _arrayEmpty2D = [NSMutableArray array];
        for(int rows =0; rows< [self getRows]; ++rows){
            NSMutableArray<id<Cell>> *row = [NSMutableArray array];
            for(int cols =0; cols< [self getCols]; ++cols){
                [row addObject:[[EmptyCell alloc]init]];
            }
            [self.arrayEmpty2D addObject:row];
        }
    }
    return self;
}

- (nonnull id<Cell>)getCell:(nonnull id<Location>)loc { 
    return nil;
}

- (int)getCols {
    return 12;
}

- (nonnull NSString *)getGridText {
    // Returns grid text
    // Develops Grid text by starting with the A character for the column headers
    // then creates the row numbers
    // finally appends to the string at the end and returns
    char start = 'A';
    NSString* top = @"   |";
    NSString* bottom = @"";
    for(int i =0; i < [self getCols]; ++i){
        top = [top stringByAppendingFormat:@"%c %7s |",(char)(start+i)," "];
    }
    for(int i=0; i<[self getRows]; ++i){
        bottom = (i < 9)?
        [bottom stringByAppendingFormat:@"%d |",(i+1)]:
        [bottom stringByAppendingFormat:@"%d|",(i+1)];
        for(int j =0; j<[self getCols]; ++j){
            id<Cell> element = self.arrayEmpty2D[i][j];
            bottom = [bottom stringByAppendingFormat:@"%@ |",
            [element abbreviatedCellText]];
        }
        bottom = [bottom stringByAppendingString:@"\n"];
    }
    NSString *combined = [top
                          stringByAppendingFormat:@"\n %@", bottom];
    return combined;
}

- (int)getRows { 
    return 20;
}

- (nonnull NSString *)processCommand:(nonnull NSString *)command { 
    return nil;
}

@end
