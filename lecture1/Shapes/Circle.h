#import <Foundation/Foundation.h>
#import "ShapeType.h"

@interface Circle: NSObject <ShapeType>

+(Circle *)create;

-(instancetype)initWithRadius:(float) r;

-(BOOL)isEqualToCircle:(Circle *) other;
-(BOOL)isEqual:(id) other;

@end
