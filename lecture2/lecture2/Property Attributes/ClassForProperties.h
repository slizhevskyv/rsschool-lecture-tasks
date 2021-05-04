//
//  ClassForProperties.h
//  lecture2
//
//  Created by Vladislav Slizhevsky on 5/4/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ClassForProperties : NSObject {
    id _object1, _object2;
    NSMutableArray *_array;
    NSNumber *_number;
    NSUInteger _balance;
}

@property (nonatomic, retain) id object1;
@property (nonatomic) id object2;
@property (nonatomic, copy) NSMutableArray *array;
@property (atomic, retain) NSNumber *number;
@property NSUInteger balance;

@end

NS_ASSUME_NONNULL_END
