//
//  main.m
//  NSEnum
//
//  Created by Vladislav Slizhevsky on 5/1/21.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, CardinalDirection) {
    north = 0,
    east = 1,
    south = 2,
    west = 3
};

NSString* getEnumValue(CardinalDirection direction);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%@", getEnumValue(north));
    }
    return 0;
}

NSString* getEnumValue(CardinalDirection direction) {
    switch (direction) {
        case 0:
            return @"north";
        case 1:
            return @"east";
        case 2:
            return @"south";
        case 3:
            return @"west";
        default:
            return @"";
    }
}
