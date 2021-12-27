//
//  UILabel+ESConstructor.m
//  EasyObjC
//
//  Created by Yi on 2021/12/27.
//

#import "UILabel+ESConstructor.h"

@implementation UILabel (ESConstructor)

+ (UILabel *)es_createLabelWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor alignment:(NSTextAlignment)alignment numberOfLines:(NSInteger)numberOfLines otherStylesCall:(void (^)(UILabel * _Nonnull))call {
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.font = font;
    label.textColor = textColor;
    label.textAlignment = alignment;
    label.numberOfLines = numberOfLines;
    if (call) {
        call(label);
    }
    return label;
}

+ (UILabel *)es_createLabelWithFont:(UIFont *)font textColor:(UIColor *)textColor alignment:(NSTextAlignment)alignment numberOfLines:(NSInteger)numberOfLines otherStylesCall:(void (^)(UILabel * _Nonnull))call {
    return [UILabel es_createLabelWithFrame:CGRectZero font:font textColor:textColor alignment:alignment numberOfLines:numberOfLines otherStylesCall:call];
}

@end
