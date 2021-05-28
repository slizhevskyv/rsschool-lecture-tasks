//
//  main.m
//  lecture6
//
//  Created by Vladislav Slizhevsky on 5/28/21.
//

#import <Foundation/Foundation.h>

typedef NSInteger(^IncrementerType)(void);

IncrementerType makeIncrementerForIncrementAmount(NSInteger amount) {
    __block NSInteger counter = 0;
    
    return ^NSInteger {
        return counter += amount;
    };
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        IncrementerType inc = makeIncrementerForIncrementAmount(3);
        IncrementerType inc1 = makeIncrementerForIncrementAmount(1);
        
        for (int i = 0; i < 10; i++) {
            NSLog(@"by 3: %ld", inc());
            NSLog(@"by 1: %ld", inc1());
        }
    }
    return 0;
}
