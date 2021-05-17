//
//  main.m
//  lecture4
//
//  Created by Vladislav Slizhevsky on 5/16/21.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "NSArray+InsertionSort.h"

void iterateThroughArray(void) {
    NSArray *arr = @[@1, @2, @3, @4, @5];
    
    // c-style
    for (int i = 0; i < arr.count; i++) {
        NSLog(@"[c-style]: %@", arr[i]);
    }
    
    // NSEnumerator
    NSEnumerator *enumerator = [arr objectEnumerator];
    id object;
    while (object = [enumerator nextObject]) {
        NSLog(@"[NSEnumerator]: %@", object);
    }
    
    // forin
    for (NSNumber *num in arr) {
        NSLog(@"[forin]: %@", num);
    }
    
    // block
    [arr enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"[block]: %@", obj);
    }];
    
    // reverse forin
    for(id object in [arr reverseObjectEnumerator]) {
        NSLog(@"[reverse forin]: %@", object);
    }
    
}

NSData* mergeData(NSArray<NSData *> *arr) {
    NSMutableData *result = [NSMutableData new];
    
    for (NSData *d in arr) {
        [result appendData: d];
    }
    
    return result;
}

void mergeDataTest(void) {
    NSString *chunk1 = @"Hello", *chunk2 = @" World!";
    
    NSArray *sampleDataArr = @[
        [NSData dataWithBytes:[chunk1 UTF8String] length:strlen([chunk1 UTF8String])],
        [NSData dataWithBytes:[chunk2 UTF8String] length:strlen([chunk2 UTF8String])]
    ];
    NSLog(@"%@", [NSString stringWithUTF8String: mergeData(sampleDataArr).bytes]);
}

void nsPredicateFilter(NSString *subStr) {
    NSArray *stringArr = @[@"Application", @"Beef", @"Apple", @"Orange", @"Orphan"];
    
    NSArray *filteredArr = [stringArr filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"self contains[c] %@", subStr]];
    NSLog(@"%@", filteredArr);
}

void KVCPerson(void) {
    Person *vs = [[Person alloc] initWithFirstName:@"Vlad" andLastName:@"Slizhevsky"];
    Person *gs = [[Person alloc] initWithFirstName:@"Grisha" andLastName:@"Sokolov"];
    
    NSDictionary *dict = @{
        vs: @"Vlad Slizhevsky",
        gs: @"Grisha Sokolov"
    };
    
    NSLog(@"%@", dict);
}

NSString* removeDuplicates(NSString *str) {
    NSMutableArray *arrWords = [[str componentsSeparatedByString:@" "] mutableCopy];
    
    [arrWords enumerateObjectsUsingBlock:^(NSString *obj, NSUInteger idx, BOOL *stop) {
        [arrWords replaceObjectAtIndex:idx withObject:[obj stringByTrimmingCharactersInSet:[NSCharacterSet punctuationCharacterSet]]];
    }];

    NSSet *uniqueWords = [NSSet setWithArray:arrWords];
    
    NSArray *sortedArr = [[uniqueWords allObjects] sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [obj1 compare: obj2 options: NSNumericSearch | NSCaseInsensitiveSearch];
    }];
    
    return [sortedArr componentsJoinedByString:@" "];
}

void insertionSort() {
    NSArray *sortedArr = [@[@4, @3, @2, @10, @12, @1, @5, @6] insertionSort];
    NSLog(@"%@", sortedArr);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        iterateThroughArray();
//        mergeDataTest();
//        nsPredicateFilter(@"or");
//        NSLog(@"%@", removeDuplicates(@"A bit Hello! My name is Vlad! My name is Vlad! Vlad name U too"));
//        KVCPerson();
        insertionSort();
    }
    return 0;
}
