//
//  main.m
//  lecture2
//
//  Created by Vladislav Slizhevsky on 5/4/21.
//

#import <Foundation/Foundation.h>
#import "Human.h"
#import "Pet.h"
#import "TestClass.h"
#import "DelegateAdopter.h"
#import "TreeNode.h"

void referenceCycles() {
    Human *human = [Human new];
    Pet *pet = [Pet new];

    human.humanPet = pet;
    pet.owner = human;
}

void stringWithFormatDeallocation() {
    // with MRR
    NSString *str;

    @autoreleasepool {
        str = [NSString stringWithFormat:@"hello world"];
    }
    
    NSLog(@"%@", str);
}

void delegatePattern() {
    TestClass *tc = [TestClass new];
    DelegateAdopter *da = [DelegateAdopter new];
    
    tc.delegate = da;
    
    tc.sampleValue = 1;

//    MRC
//    [tc release];
//    [da release];
}

void binaryTree() {
    TreeNode *root = [TreeNode newTreeNodeWithValue:[NSNumber numberWithInt: 2]];
    TreeNode *leftNode = [TreeNode newTreeNodeWithValue:[NSNumber numberWithInt: 4]];
    TreeNode *rightNode = [TreeNode newTreeNodeWithValue:[NSNumber numberWithInt: 5]];
    
    root.leftNode = leftNode;
    root.rightNode = rightNode;
    
    leftNode.leftNode = [TreeNode newTreeNodeWithValue:[NSNumber numberWithInt: 10]];
    leftNode.rightNode = [TreeNode newTreeNodeWithValue:[NSNumber numberWithInt: 30]];
    
    rightNode.leftNode = [TreeNode newTreeNodeWithValue:[NSNumber numberWithInt: 22]];
    rightNode.rightNode = [TreeNode newTreeNodeWithValue:[NSNumber numberWithInt: 76]];
    
    [root print];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        referenceCycles();
//        stringWithFormatDeallocation();
//        delegatePattern();
//        binaryTree();
    }
    return 0;
}
