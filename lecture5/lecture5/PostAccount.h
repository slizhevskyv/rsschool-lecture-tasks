//
//  PostAccount.h
//  lecture5
//
//  Created by Vladislav Slizhevsky on 5/28/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PostAccount : NSObject

@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, copy) NSString *streetAddress;
@property (nonatomic, copy) NSString *locality;
@property (nonatomic, copy) NSString *region;
@property (nonatomic, assign) NSInteger postalCode;
@property (nonatomic, readonly) NSString *address;

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                        streetAddress:(NSString *)streetAddress
                        locality:(NSString *)locality
                      postalCode:(NSInteger)postalCode;
@end

NS_ASSUME_NONNULL_END
