//
//  main.m
//  ArgumentAsAReference
//
//  Created by Vladislav Slizhevsky on 5/1/21.
//

#import <Foundation/Foundation.h>

BOOL someUsefulFunction(NSInteger number, NSError** error);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSError* moreThan10 = [NSError errorWithDomain:@"sampleDomain" code:10 userInfo:nil];
        NSError* lessThan0 = [NSError errorWithDomain:@"sampleDomain" code:0 userInfo:nil];
        
        
        @try {
//            someUsefulFunction(11, &moreThan10);
            someUsefulFunction(-1, &lessThan0);
        } @catch (NSError *error) {
            NSLog(@"Error %@", error);
        } 
        
    }
    return 0;
}

BOOL someUsefulFunction(NSInteger number, NSError** error) {
    if (number > 10 || number < 0) {
        @throw *error;
    }
    
    return true;
}
