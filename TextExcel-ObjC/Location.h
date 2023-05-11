//
//  Location.h
//  TextExcel-ObjC
//
//  Created by Tristan Zippert on 5/10/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Location <NSObject>

-(int) getRow;
-(int) getCol; 

@end

NS_ASSUME_NONNULL_END
