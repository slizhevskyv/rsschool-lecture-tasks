//
//  Listener.h
//  lecture5
//
//  Created by Vladislav Slizhevsky on 5/28/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Listener : NSObject

@property (nonatomic, copy) NSString *name;

-(instancetype)initWithName:(NSString *)name;
-(void)handle;

@end

NS_ASSUME_NONNULL_END
