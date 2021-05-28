//
//  RSBroadcaster.m
//  lecture5
//
//  Created by Vladislav Slizhevsky on 5/28/21.
//

#import "RSBroadcaster.h"

@implementation RSBroadcaster

- (void)post {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"PostNotification" object:nil];
}

@end
