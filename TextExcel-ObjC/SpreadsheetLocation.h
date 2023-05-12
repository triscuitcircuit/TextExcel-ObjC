//
//  SpreadsheetLocation.h
//  TextExcel-ObjC
//
//  Created by Tristan Zippert on 5/11/23.
//

#import <Foundation/Foundation.h>
#import "Location.h"
NS_ASSUME_NONNULL_BEGIN

@interface SpreadsheetLocation : NSObject<Location>
@property (assign) int row,col;
-(instancetype) init: (NSString*)cellname;
@end

NS_ASSUME_NONNULL_END
