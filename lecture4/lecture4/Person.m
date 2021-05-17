//
//  Person.m
//  lecture4
//
//  Created by Vladislav Slizhevsky on 5/16/21.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName {
    self = [super init];
    
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
    }
    
    return self;
}

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

- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    id copy = [[[self class] alloc] init];
    
    if (copy) {
        [copy setFirstName:[self.firstName copyWithZone:zone]];
        [copy setLastName:[self.lastName copyWithZone:zone]];
    }
    
    return copy;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Object: %@ %@", self.firstName, self.lastName];
}

@end
