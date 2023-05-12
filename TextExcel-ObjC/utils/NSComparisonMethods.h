//
//  NSComparisonMethods.h
//  TextExcel-ObjC
//
//  Created by Tristan Zippert on 5/10/23.
//
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol NSComparisonMethods

-(BOOL) isEqualTo:(id)object;
-(BOOL) isLessThanOrEqualTo:(id)object;
-(BOOL) isLessThan:(id)object;
-(BOOL) isGreaterThan:(id)object;
-(BOOL) isGreaterThanOrEqualTo:(id)object;
-(BOOL) isNotEqualTo:(id)object;

@end
NS_ASSUME_NONNULL_END
