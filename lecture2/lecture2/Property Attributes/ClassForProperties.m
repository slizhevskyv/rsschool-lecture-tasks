//
//  ClassForProperties.m
//  lecture2
//
//  Created by Vladislav Slizhevsky on 5/4/21.
//

#import "ClassForProperties.h"

@implementation ClassForProperties

- (void)setObject1:(id)object1 {
    [object1 retain];
    [_object1 release];
    _object1 = object1;
}

- (id) object1 {
    return _object1;
}

- (void)setObject2:(id)object2 {
    _object2 = object2;
}

- (id)object2 {
    return _object2;
}

- (void)setArray:(NSMutableArray *)array {
    [_array autorelease];
    _array = [array copy];
}

- (NSMutableArray *)array {
    return [[_array copy] autorelease];
}

- (void)setNumber:(NSNumber *)number {
    @synchronized (self) {
        [number retain];
        [_number release];
        _number = number;
    }
}

- (NSNumber *)number {
    NSNumber *tmp;
    @synchronized (self) {
        tmp = [_number retain];
    }
    return [tmp autorelease];
}

- (NSUInteger)balance {
    NSUInteger tmp;
    @synchronized (self) {
        tmp = _balance;
    }
    return tmp;
}

- (void)setBalance:(NSUInteger)balance {
    @synchronized (self) {
        _balance = balance;
    }
}

@end
