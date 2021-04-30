#import "Rectangle.h"


@interface Rectangle ()

@property float width, length;

@end


@implementation Rectangle

+(Rectangle *)create {
  return [Rectangle new];
}

-(instancetype)initWithWidth:(float) w andLength:(float) l {
  self = [super init];

  if (self) {
      if (w < 0 || l < 0) {
        return nil;
      }

      _width = w;
      _length = l;
  }

  return self;
}

-(float)area {
  return _width * _length;
}

-(float)perimeter {
  return 2 * _width + 2 * _length;
}

-(BOOL)isEqualToRectangle:(Rectangle *) other {
  return [self area] == [other area];
}

-(BOOL)isEqual:(id) other {
  if ([other respondsToSelector: @selector(area)]) {
    return [self area] == [other area];
  }

  return NO;
}


@end
