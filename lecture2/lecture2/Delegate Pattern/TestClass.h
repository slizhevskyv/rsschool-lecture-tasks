//
//  TestClass.h
//  lecture2
//
//  Created by Vladislav Slizhevsky on 5/4/21.
//

#import <Foundation/Foundation.h>
#import "DelegateType.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestClass : NSObject

@property (nonatomic, assign) NSInteger sampleValue;

@property (nonatomic, weak) id<DelegateType> delegate;

@end

NS_ASSUME_NONNULL_END
