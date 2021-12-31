//
//  UITextField+ESConstructor.m
//  EasyObjC
//
//  Created by 郑洪毅 on 2021/12/31.
//

#import "UITextField+ESConstructor.h"

@implementation UITextField (ESConstructor)

+ (UITextField *)es_createWithFrame:(CGRect)frame textColor:(UIColor *)textColor alignment:(NSTextAlignment)alignment placeHolder:(NSString *)placeHolder otherStylesCall:(void (^)(UITextField * _Nonnull))call {
    UITextField *result = [[UITextField alloc] initWithFrame:frame];
    if (textColor) {
        result.textColor = textColor;
    }
    result.textAlignment = alignment;
    result.placeholder = placeHolder;
    if (call) {
        call(result);
    }
    return result;
}

+ (UITextField *)es_createWithTextColor:(UIColor *)textColor alignment:(NSTextAlignment)alignment placeHolder:(NSString *)placeHolder otherStylesCall:(void (^)(UITextField * _Nonnull))call {
    return [UITextField es_createWithFrame:CGRectZero textColor:textColor alignment:alignment placeHolder:placeHolder otherStylesCall:call];
}

@end
