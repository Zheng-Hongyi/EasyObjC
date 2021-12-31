//
//  UIStepper+ESConstructor.m
//  EasyObjC
//
//  Created by 郑洪毅 on 2021/12/31.
//

#import "UIStepper+ESConstructor.h"

@implementation UIStepper (ESConstructor)

+ (UIStepper *)es_createWithFrame:(CGRect)frame continuous:(BOOL)continuous autorepeat:(BOOL)autorepeat wraps:(BOOL)wraps value:(double)value minimumValue:(double)minimumValue maximumValue:(double)maximumValue stepValue:(double)stepValue normalBackgroundImage:(UIImage *)nImage normalDividerImage:(UIImage *)nDividerImage normalIncrementImage:(UIImage *)nIncrementImage normalDecrementImage:(UIImage *)nDecrementImage otherStylesCall:(void (^)(UIStepper * _Nonnull))call {
    UIStepper *result = [[UIStepper alloc] initWithFrame:frame];
    result.continuous = continuous;
    result.autorepeat = autorepeat;
    result.wraps = wraps;
    result.value = value;
    result.minimumValue = minimumValue;
    result.maximumValue = maximumValue;
    result.stepValue = stepValue;
    if (nImage) {
        [result setBackgroundImage:nImage forState:UIControlStateNormal];
    }
    if (nDividerImage) {
        [result setDividerImage:nDividerImage forLeftSegmentState:UIControlStateNormal rightSegmentState:UIControlStateNormal];
    }
    if (nIncrementImage) {
        [result setIncrementImage:nIncrementImage forState:UIControlStateNormal];
    }
    if (nDecrementImage) {
        [result setDecrementImage:nDecrementImage forState:UIControlStateNormal];
    }
    if (call) {
        call(result);
    }
    return result;
}

+ (UIStepper *)es_createWithContinuous:(BOOL)continuous autorepeat:(BOOL)autorepeat wraps:(BOOL)wraps value:(double)value minimumValue:(double)minimumValue maximumValue:(double)maximumValue stepValue:(double)stepValue normalBackgroundImage:(UIImage *)nImage normalDividerImage:(UIImage *)nDividerImage normalIncrementImage:(UIImage *)nIncrementImage normalDecrementImage:(UIImage *)nDecrementImage otherStylesCall:(void (^)(UIStepper * _Nonnull))call {
    return [UIStepper es_createWithFrame:CGRectZero continuous:continuous autorepeat:autorepeat wraps:wraps value:value minimumValue:minimumValue maximumValue:maximumValue stepValue:stepValue normalBackgroundImage:nImage normalDividerImage:nDividerImage normalIncrementImage:nIncrementImage normalDecrementImage:nDecrementImage otherStylesCall:call];
}

@end
