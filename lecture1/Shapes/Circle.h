#import <Foundation/Foundation.h>
#import "Shape.h"

@interface Circle: Shape

+(Circle *)create;

-(instancetype)initWithRadius:(float) r;

-(BOOL)isEqualToCircle:(Circle *) other;
-(BOOL)isEqual:(id) other;

@end
