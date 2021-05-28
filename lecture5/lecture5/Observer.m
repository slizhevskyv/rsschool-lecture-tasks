//
//  Observer.m
//  lecture5
//
//  Created by Vladislav Slizhevsky on 5/28/21.
//

#import "Observer.h"

@implementation Observer

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    NSLog(@"KeyPath: %@", keyPath);
    NSLog(@"Change: %@", change);
}

@end
