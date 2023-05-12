//
//  TextCell.h
//  TextExcel-ObjC
//
//  Created by Tristan Zippert on 5/10/23.
//

#import <Foundation/Foundation.h>
#import "Cell.h"
#import "NSComparisonMethods.h"

NS_ASSUME_NONNULL_BEGIN

@interface TextCell : NSObject<Cell, NSComparisonMethods>
@property (readonly) NSString *storage;
-(instancetype) initWithString: (NSString*)value;

@end

NS_ASSUME_NONNULL_END
