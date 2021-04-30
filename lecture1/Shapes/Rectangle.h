#import <Foundation/Foundation.h>
#import "Shape.h"


@interface Rectangle: Shape

+(Rectangle *)create;

-(instancetype)initWithWidth:(float) w andLength:(float) l;

-(BOOL)isEqualToRectangle:(Rectangle *) other;
-(BOOL)isEqual:(id) other;

@end
