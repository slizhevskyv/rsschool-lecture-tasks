//
//  Person.m
//  lecture4
//
//  Created by Vladislav Slizhevsky on 5/16/21.
//

#import "Person.h"

@implementation Person

- (BOOL) isEqual:(id)other {
    if (self == other) {
        return YES;
    }
    
    if (![other isKindOfClass:[self class]]) {
        return NO;
    }
    
    return [self isEqualToPerson:other];
}

- (BOOL)isEqualToPerson: (Person *) otherPerson {
    return [self.firstName isEqualToString: otherPerson.firstName] && [self.lastName isEqualToString: otherPerson.lastName];
}

- (NSUInteger) hash {
    return self.firstName.hash ^ self.lastName.hash;
}

@end
