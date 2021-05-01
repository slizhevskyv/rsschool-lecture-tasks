//
//  main.m
//  IntegerTypeInformation
//
//  Created by Vladislav Slizhevsky on 5/1/21.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"char byte count: %lu; min value: %d; max value: %d;", sizeof(char), CHAR_MIN, CHAR_MAX);
        NSLog(@"unsigned char byte count: %lu; min value: %d; max value: %d;", sizeof(unsigned char), 0, UCHAR_MAX);
        NSLog(@"int byte count: %lu; min value: %d; max value: %d;", sizeof(int), INT_MIN, INT_MAX);
        NSLog(@"unsigned int byte count: %lu; min value: %d; max value: %d;", sizeof(unsigned int), 0, UINT_MAX);
        NSLog(@"short byte count: %lu; min value: %d; max value: %d;", sizeof(short), SHRT_MIN, SHRT_MAX);
        NSLog(@"unsigned short byte count: %lu; min value: %d; max value: %d;", sizeof(unsigned short), 0, USHRT_MAX);
        NSLog(@"long byte count: %lu; min value: %ld; max value: %ld;", sizeof(long), LONG_MIN, LONG_MAX);
        NSLog(@"unsigned long byte count: %lu; min value: %d; max value: %lu;", sizeof(unsigned long), 0, ULONG_MAX);
        
        // TEST
        int maxValuePlus1 = INT_MAX + 1;
        NSLog(@"%d", maxValuePlus1);
    }
    return 0;
}
