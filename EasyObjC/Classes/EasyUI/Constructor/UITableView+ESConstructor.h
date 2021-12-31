//
//  UITableView+ESConstructor.h
//  EasyObjC
//
//  Created by Yi on 2021/12/29.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (ESConstructor)

+ (UITableView *)es_createWithFrame:(CGRect)frame
                     backgroundView:(UIView *)backgroundView
                    backgroundColor:(UIColor *)backgroundColor
                     tableViewStyle:(UITableViewStyle)style
                    otherStylesCall:(void (^)(UITableView *))call;

+ (UITableView *)es_createWithBackgroundView:(UIView *)backgroundView
                             backgroundColor:(UIColor *)backgroundColor
                              tableViewStyle:(UITableViewStyle)style
                             otherStylesCall:(void (^)(UITableView *))call;

@end

NS_ASSUME_NONNULL_END
