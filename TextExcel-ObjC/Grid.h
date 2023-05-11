//
//  Grid.h
//  TextExcel-ObjC
//
//  Created by Tristan Zippert on 5/10/23.
//

#import <Foundation/Foundation.h>
#import "Cell.h"
#import "Location.h"

NS_ASSUME_NONNULL_BEGIN

@protocol Grid <NSObject>

-(NSString*) processCommand:(NSString*) command;
-(int) getRows;
-(int) getCols;
-(id<Cell>) getCell:(id<Location>) loc;
-(NSString*) getGridText;

@end

NS_ASSUME_NONNULL_END
