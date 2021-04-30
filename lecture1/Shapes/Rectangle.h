#import <Foundation/Foundation.h>
#import "ShapeType.h"

@interface Rectangle: NSObject <ShapeType>

+(Rectangle *)create;

-(instancetype)initWithWidth:(float) w andLength:(float) l;

-(BOOL)isEqualToRectangle:(Rectangle *) other;
-(BOOL)isEqual:(id) other;

@end
