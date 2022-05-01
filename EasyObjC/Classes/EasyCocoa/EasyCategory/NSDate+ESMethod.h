//
//  NSDate+ESMethod.h
//  EasyObjC
//
//  Created by Yi on 2022/5/1.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (ESMethod)

- (NSInteger)es_getYear;

- (NSInteger)es_getMonth;

- (NSInteger)es_getDay;

- (NSUInteger)es_getWeekly;

- (NSInteger)es_getHour;

- (NSInteger)es_getMinute;

- (NSInteger)es_getSecond;

#pragma mark - API Class Utils
+ (NSString *)es_getMsecTimeslotString;

+ (NSString *)es_getTimeslotString;

@end

NS_ASSUME_NONNULL_END
