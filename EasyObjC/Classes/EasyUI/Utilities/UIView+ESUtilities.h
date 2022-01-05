//
//  UIView+ESUtilities.h
//  EasyObjC
//
//  Created by Yi on 2022/1/5.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (ESUtilities)

- (void)es_drawBoderWithWidth:(CGFloat)width color:(UIColor *)color cornerRadius:(CGFloat)radius;

@end

NS_ASSUME_NONNULL_END
