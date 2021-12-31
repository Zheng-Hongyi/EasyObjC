//
//  UIColor+ESUtilities.m
//  EasyObjC
//
//  Created by Yi on 2021/12/31.
//

#import "UIColor+ESUtilities.h"

@implementation UIColor (ESUtilities)

+ (UIColor *)es_colorWithRGBHex:(UInt32)hex {
    
    int r = (hex >> 16) & 0xFF;
    int g = (hex >> 8) & 0xFF;
    int b = (hex) & 0xFF;
    
    return [UIColor colorWithRed:r / 255.0f
                           green:g / 255.0f
                            blue:b / 255.0f
                           alpha:1.0f];
}

+ (UIColor *)es_colorWithRGBAHex:(UInt32)hex {

    int r = (hex >> 24) & 0xFF;
    int g = (hex >> 16) & 0xFF;
    int b = (hex >> 8) & 0xFF;
    int a = (hex) & 0xFF;
    
    return [UIColor colorWithRed:r / 255.0f
                           green:g / 255.0f
                            blue:b / 255.0f
                           alpha:a / 255.0f];
}

@end
