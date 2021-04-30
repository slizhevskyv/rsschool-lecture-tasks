#import "Circle.h"

#define PI 3.141592654

@interface Circle ()

@property float radius;

@end


@implementation Circle

+(Circle *)create {
  return [Circle new];
}

-(instancetype)initWithRadius:(float) r {
  self = [super init];

  if (self) {
    if (r < 0) {
      return nil;
    }

    _radius = r;
  }

  return self;
}

-(float)area {
  return PI * (_radius * _radius);
}

-(float)perimeter {
  return 2 * PI * _radius;
}

-(BOOL)isEqualToCircle:(Circle *) other {
  return [self area] == [other area];
}

-(BOOL)isEqual:(id) other {
  if ([other respondsToSelector: @selector(area)]) {
    return [self area] == [other area];
  }

  return NO;
}

@end
