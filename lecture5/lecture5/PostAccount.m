//
//  PostAccount.m
//  lecture5
//
//  Created by Vladislav Slizhevsky on 5/28/21.
//

#import "PostAccount.h"

@implementation PostAccount

- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName streetAddress:(NSString *)streetAddress locality:(NSString *)locality postalCode:(NSInteger)postalCode {
    
    self = [super init];
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
        _streetAddress = streetAddress;
        _locality = locality;
        _postalCode = postalCode;
    }
    
    return self;
}

@end
