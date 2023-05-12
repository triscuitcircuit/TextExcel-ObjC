//
//  TextCell.m
//  TextExcel-ObjC
//
//  Created by Tristan Zippert on 5/10/23.
//

#import "TextCell.h"

@implementation TextCell

- (nonnull NSString *)abbreviatedCellText {
    if ([_storage length]>=10){
        return [_storage substringWithRange:NSMakeRange(0, 10)];
    }else{
        return @"";
    }
}

- (nonnull NSString *)fullCellText {
    return self.storage;
}

- (BOOL)isEqualTo:(nonnull id)object {
    return TRUE;
}

- (BOOL)isGreaterThan:(nonnull id)object {
    return TRUE;
}

- (BOOL)isGreaterThanOrEqualTo:(nonnull id)object {
    return TRUE;
}

- (BOOL)isLessThan:(nonnull id)object {
    return TRUE;
}

- (BOOL)isLessThanOrEqualTo:(nonnull id)object {
    return TRUE;
}

- (BOOL)isNotEqualTo:(nonnull id)object {
    return TRUE;
}

- (nonnull instancetype)initWithString:(nonnull NSString *)value {
    self = [super init];
    if(self)
        _storage = value;
    return self;
}

@end
