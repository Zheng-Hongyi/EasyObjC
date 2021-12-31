//
//  UISlider+ESConstructor.m
//  EasyObjC
//
//  Created by 郑洪毅 on 2021/12/31.
//

#import "UISlider+ESConstructor.h"

@implementation UISlider (ESConstructor)

+ (UISlider *)es_createWithFrame:(CGRect)frame value:(float)value minimumValue:(float)minimumValue maximumValue:(float)maximumValue minimumValueImage:(UIImage *)minimumValueImage maximumValueImage:(UIImage *)maximumValueImage continuous:(BOOL)continuous minimumTrackTintColor:(UIColor *)minimumTrackTintColor maximumTrackTintColor:(UIColor *)maximumTrackTintColor thumbTintColor:(UIColor *)thumbTintColor otherStylesCall:(void (^)(UISlider * _Nonnull))call {
    UISlider *result = [[UISlider alloc] initWithFrame:frame];
    result.value = value;
    result.minimumValue = minimumValue;
    result.maximumValue = maximumValue;
    [result setMinimumValueImage:minimumValueImage];
    result.maximumValueImage = maximumValueImage;
    result.continuous = continuous;
    result.minimumTrackTintColor = minimumTrackTintColor;
    result.maximumTrackTintColor = maximumTrackTintColor;
    result.thumbTintColor = thumbTintColor;
    if (call) {
        call(result);
    }
    return result;
}

+ (UISlider *)es_createWithValue:(float)value minimumValue:(float)minimumValue maximumValue:(float)maximumValue minimumValueImage:(UIImage *)minimumValueImage maximumValueImage:(UIImage *)maximumValueImage continuous:(BOOL)continuous minimumTrackTintColor:(UIColor *)minimumTrackTintColor maximumTrackTintColor:(UIColor *)maximumTrackTintColor thumbTintColor:(UIColor *)thumbTintColor otherStylesCall:(void (^)(UISlider * _Nonnull))call {
    return [UISlider es_createWithFrame:CGRectZero value:value minimumValue:minimumValue maximumValue:maximumValue minimumValueImage:minimumValueImage maximumValueImage:maximumValueImage continuous:continuous minimumTrackTintColor:minimumTrackTintColor maximumTrackTintColor:maximumTrackTintColor thumbTintColor:thumbTintColor otherStylesCall:call];
}

@end
