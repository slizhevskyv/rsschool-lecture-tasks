#import <Foundation/Foundation.h>
#import "ShapeType.h"

@interface Triangle: NSObject <ShapeType>

+(Triangle *)create;

-(instancetype)initWithA:(float) aSide B: (float) bSide C: (float) cSide;

-(BOOL)isEqualToTriangle:(Triangle *) other;
-(BOOL)isEqual:(id) other;

@end
