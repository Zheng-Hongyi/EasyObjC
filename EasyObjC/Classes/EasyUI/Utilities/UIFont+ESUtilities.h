//
//  UIFont+ESUtilities.h
//  EasyObjC
//
//  Created by Yi on 2021/12/31.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIFont (ESUtilities)

+ (UIFont *)es_lightPingFangTCWithSize:(CGFloat)size;

+ (UIFont *)es_regularPingFangTCWithSize:(CGFloat)size;

+ (UIFont *)es_thinPingFangTCWithSize:(CGFloat)size;

+ (UIFont *)es_mediumPingFangTCWithSize:(CGFloat)size;

+ (UIFont *)es_boldPingFangTCWithSize:(CGFloat)size;
@end

NS_ASSUME_NONNULL_END
