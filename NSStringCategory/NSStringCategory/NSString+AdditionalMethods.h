//
//  NSString+NSString_AdditionalMethods.h
//  NSStringCategory
//
//  Created by Vladislav Slizhevsky on 4/30/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (AdditionalMethods)

-(BOOL)isEmpty;
-(NSString *)reversed;
-(NSUInteger)wordsCount;

@end

NS_ASSUME_NONNULL_END
