//
//  Human.h
//  lecture2
//
//  Created by Vladislav Slizhevsky on 5/4/21.
//

#import <Foundation/Foundation.h>
#import "Pet.h"
NS_ASSUME_NONNULL_BEGIN

//@class Pet;

@interface Human : NSObject

@property (nonatomic, strong) Pet *humanPet;

@end

NS_ASSUME_NONNULL_END
