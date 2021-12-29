//
//  UIButton+ESConstructor.h
//  EasyObjC
//
//  Created by 郑洪毅 on 2021/12/29.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (ESConstructor)

+ (UIButton *)es_createWithType:(UIButtonType)type
                          frame:(CGRect)frame
                    normalTitle:(NSString *)normalTitle
                    normalImage:(UIImage *)normalImage
          normalBackgroundImage:(UIImage *)normalBackgroundImage
               normalTitleColor:(UIColor *)color
                      titleFont:(UIFont *)font
                otherStylesCall:(void (^)(UIButton *))call;

+ (UIButton *)es_createWithType:(UIButtonType)type
                    normalTitle:(NSString *)normalTitle
                    normalImage:(UIImage *)normalImage
          normalBackgroundImage:(UIImage *)normalBackgroundImage
               normalTitleColor:(UIColor *)color
                      titleFont:(UIFont *)font
                otherStylesCall:(void (^)(UIButton *))call;

@end

NS_ASSUME_NONNULL_END
