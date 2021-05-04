//
//  TreeNode.m
//  lecture2
//
//  Created by Vladislav Slizhevsky on 5/4/21.
//

#import "TreeNode.h"

@implementation TreeNode

//@synthesize value;

- (instancetype)initWithValue:(id)v {
    self = [super init];
    
    if (self) {
        _value = v;
    }
    
    return self;
}

+ (TreeNode *)newTreeNodeWithValue:(id)v {
    return [[[TreeNode alloc] initWithValue:v] autorelease];
}

- (void)dealloc {
    NSLog(@"[TreeNode] value is %@, object is %@ is deallocated", self.value, self);

    [self.value release];
    
    [super dealloc];
}

- (void)print {
    [self printTreeWith:@"" node:self isLeft:NO];
}

- (void)printTreeWith: (NSString *)prefix node: (TreeNode *) node isLeft: (BOOL) isLeft   {
    if (node) {
        NSLog(@"%@%@%@", prefix, isLeft ? @"|--" : @"\\--", node.value);
        [self printTreeWith:[NSString stringWithFormat:@"%@%@", prefix, isLeft ? @"|   ": @"    "] node:node.leftNode isLeft:YES];
        [self printTreeWith:[NSString stringWithFormat:@"%@%@", prefix, isLeft ? @"|   ": @"    "] node:node.rightNode isLeft:NO];
    }
}

@end
