//
//  UISlider+ESConstructor.h
//  EasyObjC
//
//  Created by 郑洪毅 on 2021/12/31.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UISlider (ESConstructor)

+ (UISlider *)es_createWithFrame:(CGRect)frame
                           value:(float)value
                    minimumValue:(float)minimumValue
                    maximumValue:(float)maximumValue
               minimumValueImage:(UIImage *)minimumValueImage
               maximumValueImage:(UIImage *)maximumValueImage
                      continuous:(BOOL)continuous
           minimumTrackTintColor:(UIColor *)minimumTrackTintColor
           maximumTrackTintColor:(UIColor *)maximumTrackTintColor
                  thumbTintColor:(UIColor *)thumbTintColor
                 otherStylesCall:(void (^)(UISlider *))call;

+ (UISlider *)es_createWithValue:(float)value
                    minimumValue:(float)minimumValue
                    maximumValue:(float)maximumValue
               minimumValueImage:(UIImage *)minimumValueImage
               maximumValueImage:(UIImage *)maximumValueImage
                      continuous:(BOOL)continuous
           minimumTrackTintColor:(UIColor *)minimumTrackTintColor
           maximumTrackTintColor:(UIColor *)maximumTrackTintColor
                  thumbTintColor:(UIColor *)thumbTintColor
                 otherStylesCall:(void (^)(UISlider *))call;

@end

NS_ASSUME_NONNULL_END
