//
//  UITableView+ESConstructor.m
//  EasyObjC
//
//  Created by Yi on 2021/12/29.
//

#import "UITableView+ESConstructor.h"

@implementation UITableView (ESConstructor)

+ (UITableView *)es_createWithFrame:(CGRect)frame backgroundView:(UIView *)backgroundView backgroundColor:(UIColor *)backgroundColor tableViewStyle:(UITableViewStyle)style otherStylesCall:(void (^)(UITableView * _Nonnull))call {
    UITableView *result = [[UITableView alloc] initWithFrame:frame style:style];
    if (backgroundColor) {
        result.backgroundColor = backgroundColor;
    }
    result.backgroundView = backgroundView;
    if (call) {
        call(result);
    }
    return result;
}

+ (UITableView *)es_createWithBackgroundView:(UIView *)backgroundView backgroundColor:(UIColor *)backgroundColor tableViewStyle:(UITableViewStyle)style otherStylesCall:(void (^)(UITableView * _Nonnull))call {
    return [UITableView es_createWithFrame:CGRectZero backgroundView:backgroundView backgroundColor:backgroundColor tableViewStyle:style otherStylesCall:call];
}

@end
