#import "Triangle.h"


@interface Triangle ()

@property float a, b, c;

@end


@implementation Triangle

+(Triangle *)create {
  return [Triangle new];
}

-(instancetype)initWithA:(float) aSide B:(float) bSide C:(float) cSide {
  self = [super init];

  if (self) {
    if (
      aSide < 0 ||
      bSide < 0 ||
      cSide < 0 ||
      aSide >= bSide + cSide
    ) {
      return nil;
    }

    _a = aSide;
    _b = bSide;
    _c = cSide;
  }

  return self;
}

-(float)square {
  return (_a + _b + _c) / 2;
}

-(float)area {
  float s = [self square];

  return sqrt(s * (s - _a) * (s - _b) * (s - _c));
}

-(float)perimeter {
  return _a + _b + _c;
}

-(BOOL)isEqualToTriangle:(Triangle *) other {
  return [self area] == [other area];
}

-(BOOL)isEqual:(id) other {
  if ([other respondsToSelector: @selector(area)]) {
    return [self area] == [other area];
  }

  return NO;
}


@end
