//
//  UISegmentedControl+ESConstructor.h
//  EasyObjC
//
//  Created by 郑洪毅 on 2021/12/31.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UISegmentedControl (ESConstructor)

+ (UISegmentedControl *)es_createWithFrame:(CGRect)frame
                                 tintColor:(UIColor *)tintColor
                     normalBackgroundImage:(UIImage *)nBackgroundImage
                                 momentary:(BOOL)momentary
                           otherStylesCall:(void (^)(UISegmentedControl *))call;

+ (UISegmentedControl *)es_createWithTintColor:(UIColor *)tintColor
                         normalBackgroundImage:(UIImage *)nBackgroundImage
                                     momentary:(BOOL)momentary
                               otherStylesCall:(void (^)(UISegmentedControl *))call;

@end

NS_ASSUME_NONNULL_END
