//
//  UITextField+ESConstructor.h
//  EasyObjC
//
//  Created by 郑洪毅 on 2021/12/31.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextField (ESConstructor)

+ (UITextField *)es_createWithFrame:(CGRect)frame
                          textColor:(UIColor *)textColor
                          alignment:(NSTextAlignment)alignment
                        placeHolder:(NSString *)placeHolder
                    otherStylesCall:(void (^)(UITextField *))call;

+ (UITextField *)es_createWithTextColor:(UIColor *)textColor
                              alignment:(NSTextAlignment)alignment
                            placeHolder:(NSString *)placeHolder
                        otherStylesCall:(void (^)(UITextField *))call;

@end

NS_ASSUME_NONNULL_END
