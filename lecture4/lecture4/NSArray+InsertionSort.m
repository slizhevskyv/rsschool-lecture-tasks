//
//  NSArray+InsertionSort.m
//  lecture4
//
//  Created by Vlad Slizhevsky on 17.05.21.
//

#import "NSArray+InsertionSort.h"

@implementation NSArray (InsertionSort)

- (NSArray *) insertionSort {
    NSMutableArray *copyArr = [self mutableCopy];
    
    for (int i = 1; i < copyArr.count; i++) {
        NSNumber *value = copyArr[i];
        int j = i - 1;
        
        while (j >= 0 && [copyArr[j] intValue] > [value intValue]) {
            copyArr[j + 1] = copyArr[j];
            j -= 1;
        }
        
        copyArr[j + 1] = value;
    }
    
    return [copyArr copy];
}

@end
