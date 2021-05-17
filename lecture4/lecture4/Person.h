//
//  Person.h
//  lecture4
//
//  Created by Vladislav Slizhevsky on 5/16/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject <NSCopying>
@property(nonatomic) NSString *firstName;
@property(nonatomic) NSString *lastName;

-(instancetype) initWithFirstName: (NSString *) firstName andLastName: (NSString *) lastName;
@end

NS_ASSUME_NONNULL_END
