//
//  UISegmentedControl+ESConstructor.m
//  EasyObjC
//
//  Created by 郑洪毅 on 2021/12/31.
//

#import "UISegmentedControl+ESConstructor.h"

@implementation UISegmentedControl (ESConstructor)

+ (UISegmentedControl *)es_createWithFrame:(CGRect)frame tintColor:(UIColor *)tintColor normalBackgroundImage:(UIImage *)nBackgroundImage momentary:(BOOL)momentary otherStylesCall:(void (^)(UISegmentedControl * _Nonnull))call {
    UISegmentedControl *result = [[UISegmentedControl alloc] initWithFrame:frame];
    result.tintColor = tintColor;
    [result setBackgroundImage:nBackgroundImage forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    result.momentary = momentary;
    if (call) {
        call(result);
    }
    return result;
}

+ (UISegmentedControl *)es_createWithTintColor:(UIColor *)tintColor normalBackgroundImage:(UIImage *)nBackgroundImage momentary:(BOOL)momentary otherStylesCall:(void (^)(UISegmentedControl * _Nonnull))call {
    return [UISegmentedControl es_createWithFrame:CGRectZero tintColor:tintColor normalBackgroundImage:nBackgroundImage momentary:momentary otherStylesCall:call];
}

@end
