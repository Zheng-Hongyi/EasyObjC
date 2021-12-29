//
//  UITextView+ESConstructor.h
//  EasyObjC
//
//  Created by Yi on 2021/12/29.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextView (ESConstructor)

+ (UITextView *)es_createWithFrame:(CGRect)frame
                         textColor:(UIColor *)color
                              font:(UIFont *)font
                   otherStylesCall:(void (^)(UITextView *))call;

+ (UITextView *)es_createWithTextColor:(UIColor *)color
                                  font:(UIFont *)font
                       otherStylesCall:(void (^)(UITextView *))call;

@end

NS_ASSUME_NONNULL_END
