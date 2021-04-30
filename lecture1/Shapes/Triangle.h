#import <Foundation/Foundation.h>
#import "Shape.h"


@interface Triangle: Shape

+(Triangle *)create;

-(instancetype)initWithA:(float) aSide B: (float) bSide C: (float) cSide;

-(BOOL)isEqualToTriangle:(Triangle *) other;
-(BOOL)isEqual:(id) other;

@end
