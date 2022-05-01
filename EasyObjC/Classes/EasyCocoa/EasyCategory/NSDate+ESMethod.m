//
//  NSDate+ESMethod.m
//  EasyObjC
//
//  Created by Yi on 2022/5/1.
//

#import "NSDate+ESMethod.h"

@implementation NSDate (ESMethod)

#pragma mark - API Basic Utils
- (NSInteger)es_getYear
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSUInteger unitFlags = {
        NSCalendarUnitYear | NSCalendarUnitMonth  | NSCalendarUnitDay |
        NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond
    };
    return [[calendar components:unitFlags fromDate:self] year];
}

- (NSInteger)es_getMonth
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSUInteger unitFlags = {
        NSCalendarUnitYear | NSCalendarUnitMonth  | NSCalendarUnitDay |
        NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond
    };
    return [[calendar components:unitFlags fromDate:self] month];
}

- (NSInteger)es_getDay
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSUInteger unitFlags = {
        NSCalendarUnitYear | NSCalendarUnitMonth  | NSCalendarUnitDay |
        NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond
    };
    return [[calendar components:unitFlags fromDate:self] day];
}

- (NSUInteger)es_getWeekly
{
    return [[NSCalendar currentCalendar] ordinalityOfUnit:NSCalendarUnitDay
                                                   inUnit:NSCalendarUnitWeekOfMonth
                                                  forDate:self];
}

- (NSInteger)es_getHour
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSUInteger unitFlags = {
        NSCalendarUnitYear | NSCalendarUnitMonth  | NSCalendarUnitDay |
        NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond
    };
    return [[calendar components:unitFlags fromDate:self] hour];
}

- (NSInteger)es_getMinute
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSUInteger unitFlags = {
        NSCalendarUnitYear | NSCalendarUnitMonth  | NSCalendarUnitDay |
        NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond
    };
    return [[calendar components:unitFlags fromDate:self] minute];
}

- (NSInteger)es_getSecond
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSUInteger unitFlags = {
        NSCalendarUnitYear | NSCalendarUnitMonth  | NSCalendarUnitDay |
        NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond
    };
    return [[calendar components:unitFlags fromDate:self] second];
}

#pragma mark - API Class Utils
+ (NSString *)es_getMsecTimeslotString
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:0.0f];
    NSTimeInterval time = [date timeIntervalSince1970] * 1000.0f;
    return [NSString stringWithFormat:@"%.0f", time];
}

+ (NSString *)es_getTimeslotString
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:0.0f];
    NSTimeInterval time = [date timeIntervalSince1970];
    return [NSString stringWithFormat:@"%.0f", time];
}


@end
