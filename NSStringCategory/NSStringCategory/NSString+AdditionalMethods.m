//
//  NSString+NSString_AdditionalMethods.m
//  NSStringCategory
//
//  Created by Vladislav Slizhevsky on 4/30/21.
//

#import "NSString+AdditionalMethods.h"

@implementation NSString (AdditionalMethods)

-(BOOL)isEmpty {
    return [self length] == 0 ? YES : NO;
}

-(NSString *)reversed {
    NSUInteger length = [self length];
    
    char buffer[length];
    
    int bufferIndex = 0;
    
    for (int i = length - 1; i >= 0; i--) {
        buffer[bufferIndex++] = [self characterAtIndex:i];
    }
    
    return [[NSString alloc] initWithBytes:buffer length:length encoding:NSUTF8StringEncoding];
}

-(NSUInteger)wordsCount {
    return [[self componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] count];
}

@end
