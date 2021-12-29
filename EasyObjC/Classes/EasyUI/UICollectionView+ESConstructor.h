//
//  UICollectionView+ESConstructor.h
//  EasyObjC
//
//  Created by Yi on 2021/12/29.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UICollectionView (ESConstructor)

+ (UICollectionView *)es_createWithFrame:(CGRect)fame
                                  layout:(UICollectionViewLayout *)layout
                           backgroudView:(UIView *)backgroundView
                         backgroundColor:(UIColor *)backgroundColor
                         otherStylesCall:(void (^)(UICollectionView *))call;

+ (UICollectionView *)es_createWithLayout:(UICollectionViewLayout *)layout
                           backgroundView:(UIView *)backgroundView
                          backgroundColor:(UIColor *)backgroiundColor
                          otherStylesCall:(void (^)(UICollectionView *))call;

@end

NS_ASSUME_NONNULL_END
