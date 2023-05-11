//
//  TextCell.m
//  TextExcel-ObjC
//
//  Created by Tristan Zippert on 5/10/23.
//

#import "TextCell.h"

@implementation TextCell

- (nonnull NSString *)abbreviatedCellText {
    return self.storage;
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

@end
