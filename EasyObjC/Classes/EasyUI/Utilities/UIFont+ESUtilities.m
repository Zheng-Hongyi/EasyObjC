//
//  UIFont+ESUtilities.m
//  EasyObjC
//
//  Created by Yi on 2021/12/31.
//

#import "UIFont+ESUtilities.h"

@implementation UIFont (ESUtilities)

+ (UIFont *)es_lightPingFangTCWithSize:(CGFloat)size {
    return [UIFont fontWithName:@"PingFangTC-Light" size:size];
}

+ (UIFont *)es_regularPingFangTCWithSize:(CGFloat)size {
    return [UIFont fontWithName:@"PingFangTC-Regular" size:size];
}

+ (UIFont *)es_thinPingFangTCWithSize:(CGFloat)size {
    return [UIFont fontWithName:@"PingFangTC-Thin" size:size];
}

+ (UIFont *)es_mediumPingFangTCWithSize:(CGFloat)size {
    return [UIFont fontWithName:@"PingFangTC-Medium" size:size];
}

+ (UIFont *)es_boldPingFangTCWithSize:(CGFloat)size {
    return [UIFont fontWithName:@"PingFangTC-Semibold" size:size];
}

@end
