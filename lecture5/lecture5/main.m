//
//  main.m
//  lecture5
//
//  Created by Vladislav Slizhevsky on 5/28/21.
//

#import <Foundation/Foundation.h>
#import "PostAccount.h"
#import "Observer.h"
#import "RSBroadcaster.h"
#import "Listener.h"

void observeComputedProperty(void) {
    PostAccount *account = [[PostAccount alloc] initWithFirstName:@"Vlad" lastName:@"Slizhevsky" streetAddress:@"Minsk" locality:@"locality" postalCode:223123];
    Observer *observer = [Observer new];
    
    
    [account addObserver:observer forKeyPath:@"streetAddress" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
    
    account.streetAddress = @"Warszaw";
}

void postNotifications(void) {
    RSBroadcaster *broadcaster = [RSBroadcaster new];
    
    Listener *listener1 = [[Listener alloc] initWithName:@"listener1"];
    Listener *listener2 = [[Listener alloc] initWithName:@"listener2"];
    Listener *listener3 = [[Listener alloc] initWithName:@"listener3"];
    
    [broadcaster post];
    
    Listener *listener4 = [[Listener alloc] initWithName:@"listener4"];
    
    [broadcaster post];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        observeComputedProperty();
        postNotifications();
    }
    return 0;
}
