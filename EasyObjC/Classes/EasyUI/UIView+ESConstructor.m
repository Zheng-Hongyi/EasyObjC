//
//  UIView+ESConstructor.m
//  EasyObjC
//
//  Created by Yi on 2021/12/29.
//

#import "UIView+ESConstructor.h"

@implementation UIView (ESConstructor)

+ (UIView *)es_createWithFrame:(CGRect)frame backgroundColor:(UIColor *)color otherStylesCall:(void (^)(UIView * _Nonnull))call {
    UIView *result = [[UIView alloc] initWithFrame:frame];
    if (color) {
        result.backgroundColor = color;
    }
    if (call) {
        call(result);
    }
    return result;
}

+ (UIView *)es_createWithBackgroundColor:(UIColor *)color otherStylesCall:(void (^)(UIView * _Nonnull))call {
    return [UIView es_createWithFrame:CGRectZero backgroundColor:color otherStylesCall:call];
}

@end
