//
//  TreeNode.h
//  lecture2
//
//  Created by Vladislav Slizhevsky on 5/4/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TreeNode<ValueType> : NSObject

@property (nonatomic, assign) ValueType value;
@property (nonatomic, weak) TreeNode *leftNode;
@property (nonatomic, weak) TreeNode *rightNode;

- (instancetype)initWithValue: (ValueType) v;
+ (TreeNode *)newTreeNodeWithValue: (ValueType) v;

- (void) print;

@end

NS_ASSUME_NONNULL_END
