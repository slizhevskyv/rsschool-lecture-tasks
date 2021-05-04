//
//  DelegateAdopter.m
//  lecture2
//
//  Created by Vladislav Slizhevsky on 5/4/21.
//

#import "DelegateAdopter.h"

@implementation DelegateAdopter

- (void)delegateMethod {
    NSLog(@"hello from delegate method");
}

- (void) dealloc {
    NSLog(@"[Delegate Adopter]: %@ is deallocated.", self);
}

@end
