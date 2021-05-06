//
//  NSDate+DayOfTheWeek.m
//  lecture3
//
//  Created by Vladislav Slizhevsky on 5/6/21.
//

#import "NSDate+DayOfTheWeek.h"

@implementation NSDate (DayOfTheWeek)

- (NSString *)dayOfTheWeek {
    NSDateFormatter *formatter = [NSDateFormatter new];
    formatter.dateFormat = @"EEEE";
    formatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"ru_RU"];
    
    return [formatter stringFromDate:self];
}

- (NSUInteger)hoursFromMagicDate {
    NSDateComponents *magicDateComponents = [NSDateComponents new];
    magicDateComponents.day = 17;
    magicDateComponents.month = 3;
    magicDateComponents.year = 1975;
    magicDateComponents.timeZone = [NSTimeZone timeZoneForSecondsFromGMT:0];
    
    NSDate *magicDate = [[NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian] dateFromComponents:magicDateComponents];
    
    return [self timeIntervalSinceDate:magicDate] / 60 / 60;
}

@end
