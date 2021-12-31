//
//  UISwitch+ESConstructor.m
//  EasyObjC
//
//  Created by 郑洪毅 on 2021/12/31.
//

#import "UISwitch+ESConstructor.h"

@implementation UISwitch (ESConstructor)

+ (UISwitch *)es_createWithFrame:(CGRect)frame backgroundColor:(UIColor *)backgroundColor onTintColor:(UIColor *)onTintColor onImage:(UIImage *)onImage tintColor:(UIColor *)tintColor offImage:(UIImage *)offImage thumbTintColor:(UIColor *)thumbTintColor otherStylesCall:(void (^)(UISwitch * _Nonnull))call {
    UISwitch *result = [[UISwitch alloc] initWithFrame:frame];
    if (backgroundColor) {
        result.backgroundColor = backgroundColor;
    }
    if (onTintColor) {
        result.onTintColor = onTintColor;
    }
    if (onImage) {
        result.onImage = onImage;
    }
    if (tintColor) {
        result.tintColor = tintColor;
    }
    if (offImage) {
        result.offImage = offImage;
    }
    if (thumbTintColor) {
        result.thumbTintColor = thumbTintColor;
    }
    if (call) {
        call(result);
    }
    return result;
}

+ (UISwitch *)es_createWithBackgroundColor:(UIColor *)backgroundColor onTintColor:(UIColor *)onTintColor onImage:(UIImage *)onImage tintColor:(UIColor *)tintColor offImage:(UIImage *)offImage thumbTintColor:(UIColor *)thumbTintColor otherStylesCall:(void (^)(UISwitch * _Nonnull))call {
    return [UISwitch es_createWithBackgroundColor:backgroundColor onTintColor:onTintColor onImage:onImage tintColor:tintColor offImage:offImage thumbTintColor:thumbTintColor otherStylesCall:call];
}

@end
