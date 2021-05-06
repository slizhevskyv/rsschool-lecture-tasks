//
//  NSDate+DayOfTheWeek.h
//  lecture3
//
//  Created by Vladislav Slizhevsky on 5/6/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (DayOfTheWeek)

@property (nonatomic, readonly) NSString *dayOfTheWeek;

- (NSUInteger)hoursFromMagicDate;

@end

NS_ASSUME_NONNULL_END
