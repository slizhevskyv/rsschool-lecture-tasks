//
//  Pet.h
//  lecture2
//
//  Created by Vladislav Slizhevsky on 5/4/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Human;

@interface Pet : NSObject

@property (nonatomic, strong) Human *owner;

@end

NS_ASSUME_NONNULL_END
