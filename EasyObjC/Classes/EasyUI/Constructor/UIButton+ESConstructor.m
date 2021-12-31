//
//  UIButton+ESConstructor.m
//  EasyObjC
//
//  Created by 郑洪毅 on 2021/12/29.
//

#import "UIButton+ESConstructor.h"

@implementation UIButton (ESConstructor)

+ (UIButton *)es_createWithType:(UIButtonType)type frame:(CGRect)frame normalTitle:(NSString *)normalTitle normalImage:(UIImage *)normalImage normalBackgroundImage:(UIImage *)normalBackgroundImage normalTitleColor:(UIColor *)color titleFont:(UIFont *)font otherStylesCall:(void (^)(UIButton * _Nonnull))call {
    UIButton *result = [UIButton buttonWithType:type];
    result.frame = frame;
    [result setTitle:normalTitle forState:UIControlStateNormal];
    if (normalImage) {
        [result setImage:normalImage forState:UIControlStateNormal];
    }
    if (normalBackgroundImage) {
        [result setBackgroundImage:normalBackgroundImage forState:UIControlStateNormal];
    }
    if (color) {
        [result setTitleColor:color forState:UIControlStateNormal];
    }
    if (font) {
        result.titleLabel.font = font;
    }
    if (call) {
        call(result);
    }
    return result;
}

+ (UIButton *)es_createWithType:(UIButtonType)type normalTitle:(NSString *)normalTitle normalImage:(UIImage *)normalImage normalBackgroundImage:(UIImage *)normalBackgroundImage normalTitleColor:(UIColor *)color titleFont:(UIFont *)font otherStylesCall:(void (^)(UIButton * _Nonnull))call {
    return [UIButton es_createWithType:type frame:CGRectZero normalTitle:normalTitle normalImage:normalImage normalBackgroundImage:normalBackgroundImage normalTitleColor:color titleFont:font otherStylesCall:call];
}

@end
