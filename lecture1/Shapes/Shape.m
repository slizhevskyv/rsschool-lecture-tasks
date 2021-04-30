#import "Shape.h"

@implementation Shape

-(float)area {
  return 0;
}

-(float)perimeter {
  return 0;
}

-(NSString *)description {
  return [NSString
    stringWithFormat:@"\nMemory address: %p;\nClass name: %@;\nArea: %f;\nPerimeter: %f;",
    &self,
    NSStringFromClass([self class]),
    [self area],
    [self perimeter]
  ];
}

@end
