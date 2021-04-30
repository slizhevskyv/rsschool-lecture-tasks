#import <Foundation/Foundation.h>
#import "Circle.h"
#import "Rectangle.h"
#import "Triangle.h"

int main(int argc, const char *argv[]) {
  @autoreleasepool {
    Circle *myCircle = [Circle create];
    Circle *myCircle1 = [[Circle alloc] initWithRadius: 5.123];

    Rectangle *myRect = [Rectangle create];
    Rectangle *myRect1 = [[Rectangle alloc] initWithWidth: 3 andLength: 5];

    Triangle *myTriangle = [Triangle create];
    Triangle *myTriangle1 = [[Triangle alloc] initWithA: 8.76 B: 4 C: 5];

    NSLog(@"myCircle: %@", [myCircle description]);
    NSLog(@"myCircle1: %@", [myCircle1 description]);

    NSLog(@"myRect: %@", [myRect description]);
    NSLog(@"myRect1: %@", [myRect1 description]);

    NSLog(@"myTriangle: %@", [myTriangle description]);
    NSLog(@"myTriangle1: %@", [myTriangle1 description]);

    NSLog(@"myTriangle == myTriangle1: %@", [myTriangle isEqualToTriangle: myTriangle1] ? @"true" : @"false"); // false
    NSLog(@"myTriangle == myTriangle: %@", [myTriangle isEqual: myTriangle] ? @"true" : @"false"); // true
    NSLog(@"myTriangle == myCircle1: %@", [myTriangle isEqual: myCircle1] ? @"true" : @"false"); // false

  }

  return 0;
}
