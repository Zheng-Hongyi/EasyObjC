//
//  UISwitch+ESConstructor.h
//  EasyObjC
//
//  Created by 郑洪毅 on 2021/12/31.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UISwitch (ESConstructor)

+ (UISwitch *)es_createWithFrame:(CGRect)frame
                 backgroundColor:(UIColor *)backgroundColor
                     onTintColor:(UIColor *)onTintColor
                         onImage:(UIImage *)onImage
                       tintColor:(UIColor *)tintColor
                        offImage:(UIImage *)offImage
                  thumbTintColor:(UIColor *)thumbTintColor
                 otherStylesCall:(void (^)(UISwitch *))call;

+ (UISwitch *)es_createWithBackgroundColor:(UIColor *)backgroundColor
                               onTintColor:(UIColor *)onTintColor
                                   onImage:(UIImage *)onImage
                                 tintColor:(UIColor *)tintColor
                                  offImage:(UIImage *)offImage
                            thumbTintColor:(UIColor *)thumbTintColor
                           otherStylesCall:(void (^)(UISwitch *))call;

@end

NS_ASSUME_NONNULL_END
