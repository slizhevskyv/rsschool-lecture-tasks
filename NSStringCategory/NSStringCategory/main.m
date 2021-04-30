//
//  main.m
//  NSStringCategory
//
//  Created by Vladislav Slizhevsky on 4/30/21.
//

#import <Foundation/Foundation.h>
#import "NSString+AdditionalMethods.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *emptyString = @"";
        NSString *sampleString = @"My name is Vlad";
        
        NSLog(@"is *emptyString empty: %@;", [emptyString isEmpty] ? @"true" : @"false");
        NSLog(@"String: %@; Reversed string: %@", sampleString, [sampleString reversed]);
        NSLog(@"String %@; Words count: %lu", sampleString, [sampleString wordsCount]);
    }
    return 0;
}
