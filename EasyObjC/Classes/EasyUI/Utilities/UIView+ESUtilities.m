//
//  UIView+ESUtilities.m
//  EasyObjC
//
//  Created by Yi on 2022/1/5.
//

#import "UIView+ESUtilities.h"

@implementation UIView (ESUtilities)

- (void)es_drawBoderWithWidth:(CGFloat)width color:(UIColor *)color cornerRadius:(CGFloat)radius {
    self.layer.cornerRadius = radius;
    self.layer.borderWidth = width;
    self.layer.borderColor = color.CGColor;
    [self.layer setMasksToBounds:YES];
}

@end
