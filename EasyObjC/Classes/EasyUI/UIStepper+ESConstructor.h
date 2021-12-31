//
//  UIStepper+ESConstructor.h
//  EasyObjC
//
//  Created by 郑洪毅 on 2021/12/31.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIStepper (ESConstructor)

+ (UIStepper *)es_createWithFrame:(CGRect)frame
                       continuous:(BOOL)continuous
                       autorepeat:(BOOL)autorepeat
                            wraps:(BOOL)wraps
                            value:(double)value
                     minimumValue:(double)minimumValue
                     maximumValue:(double)maximumValue
                        stepValue:(double)stepValue
            normalBackgroundImage:(UIImage *)nImage
               normalDividerImage:(UIImage *)nDividerImage
             normalIncrementImage:(UIImage *)nIncrementImage
             normalDecrementImage:(UIImage *)nDecrementImage
                  otherStylesCall:(void (^)(UIStepper *))call;

+ (UIStepper *)es_createWithContinuous:(BOOL)continuous
                            autorepeat:(BOOL)autorepeat
                                 wraps:(BOOL)wraps
                                 value:(double)value
                          minimumValue:(double)minimumValue
                          maximumValue:(double)maximumValue
                             stepValue:(double)stepValue
                 normalBackgroundImage:(UIImage *)nImage
                    normalDividerImage:(UIImage *)nDividerImage
                  normalIncrementImage:(UIImage *)nIncrementImage
                  normalDecrementImage:(UIImage *)nDecrementImage
                       otherStylesCall:(void (^)(UIStepper *))call;

@end

NS_ASSUME_NONNULL_END
