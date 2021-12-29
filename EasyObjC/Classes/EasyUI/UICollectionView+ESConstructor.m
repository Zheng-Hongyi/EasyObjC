//
//  UICollectionView+ESConstructor.m
//  EasyObjC
//
//  Created by Yi on 2021/12/29.
//

#import "UICollectionView+ESConstructor.h"

@implementation UICollectionView (ESConstructor)

+ (UICollectionView *)es_createWithFrame:(CGRect)fame layout:(UICollectionViewLayout *)layout backgroudView:(UIView *)backgroundView backgroundColor:(UIColor *)backgroundColor otherStylesCall:(void (^)(UICollectionView * _Nonnull))call {
    UICollectionView *result = [[UICollectionView alloc] initWithFrame:fame collectionViewLayout:layout];
    result.backgroundView = backgroundView;
    if (backgroundColor) {
        result.backgroundColor = backgroundColor;
    }
    if (call) {
        call(result);
    }
    return result;
}

+ (UICollectionView *)es_createWithLayout:(UICollectionViewLayout *)layout backgroundView:(UIView *)backgroundView backgroundColor:(UIColor *)backgroiundColor otherStylesCall:(void (^)(UICollectionView * _Nonnull))call {
    return [UICollectionView es_createWithFrame:CGRectZero layout:layout backgroudView:backgroundView backgroundColor:backgroiundColor otherStylesCall:call];
}

@end
