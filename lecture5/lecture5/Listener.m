//
//  Listener.m
//  lecture5
//
//  Created by Vladislav Slizhevsky on 5/28/21.
//

#import "Listener.h"

@implementation Listener

-(instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
    }
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handle) name:@"PostNotification" object:nil];
    
    return self;
}

- (void)handle {
    NSLog(@"%@ received notification", _name);
}

@end
