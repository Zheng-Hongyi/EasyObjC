//
//  UITextView+ESConstructor.m
//  EasyObjC
//
//  Created by Yi on 2021/12/29.
//

#import "UITextView+ESConstructor.h"

@implementation UITextView (ESConstructor)

+ (UITextView *)es_createWithFrame:(CGRect)frame textColor:(UIColor *)color font:(UIFont *)font otherStylesCall:(void (^)(UITextView * _Nonnull))call {
    UITextView *result = [[UITextView alloc] initWithFrame:frame];
    if (color) {
        result.textColor = color;
    }
    if (font) {
        result.font = font;
    }
    if (call) {
        call(result);
    }
    return result;
}

+ (UITextView *)es_createWithTextColor:(UIColor *)color font:(UIFont *)font otherStylesCall:(void (^)(UITextView * _Nonnull))call {
    return [UITextView es_createWithFrame:CGRectZero textColor:color font:font otherStylesCall:call];
}

@end
