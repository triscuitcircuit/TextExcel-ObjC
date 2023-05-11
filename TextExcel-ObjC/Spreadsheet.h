//
//  Spreadsheet.h
//  TextExcel-ObjC
//
//  Created by Tristan Zippert on 5/10/23.
//

#import <Foundation/Foundation.h>
#import "Grid.h"
#import "Cell.h"

NS_ASSUME_NONNULL_BEGIN

@interface Spreadsheet : NSObject<Grid>
@property (nonatomic, strong) NSMutableArray<NSMutableArray<id<Cell>>*> *arrayEmpty2D;

@end

NS_ASSUME_NONNULL_END
