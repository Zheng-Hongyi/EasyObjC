//
//  UIColor+ESUtilities.h
//  EasyObjC
//
//  Created by Yi on 2021/12/31.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (ESUtilities)

+ (UIColor *)es_colorWithRGBHex:(UInt32)hex;

+ (UIColor *)es_colorWithRGBAHex:(UInt32)hex;

@end

NS_ASSUME_NONNULL_END
