//
//  UIView+ESConstructor.h
//  EasyObjC
//
//  Created by Yi on 2021/12/29.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (ESConstructor)

+ (UIView *)es_createWithFrame:(CGRect)frame
               backgroundColor:(UIColor *)color
               otherStylesCall:(void (^)(UIView *))call;

+ (UIView *)es_createWithBackgroundColor:(UIColor *)color
                         otherStylesCall:(void (^)(UIView *))call;

@end

NS_ASSUME_NONNULL_END
