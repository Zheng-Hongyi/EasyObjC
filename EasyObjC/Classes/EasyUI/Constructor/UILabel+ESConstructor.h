//
//  UILabel+ESConstructor.h
//  EasyObjC
//
//  Created by Yi on 2021/12/27.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (ESConstructor)

+ (UILabel *)es_createLabelWithFrame:(CGRect)frame
                                font:(UIFont *)font
                           textColor:(UIColor *)textColor
                           alignment:(NSTextAlignment)alignment
                       numberOfLines:(NSInteger)numberOfLines
                     otherStylesCall:(void (^)(UILabel *))call;

+ (UILabel *)es_createLabelWithFont:(UIFont *)font
                          textColor:(UIColor *)textColor
                          alignment:(NSTextAlignment)alignment
                      numberOfLines:(NSInteger)numberOfLines
                    otherStylesCall:(void (^)(UILabel *))call;

@end

NS_ASSUME_NONNULL_END
