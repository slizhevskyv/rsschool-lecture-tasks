//
//  TestClass.m
//  lecture2
//
//  Created by Vladislav Slizhevsky on 5/4/21.
//

#import "TestClass.h"

@implementation TestClass

-(void) setSampleValue:(NSInteger)sampleValue {
    _sampleValue;
    
    [self.delegate delegateMethod];
}

- (void) dealloc {
    NSLog(@"[Test Class]: %@ is deallocated.", self);
}

@end
