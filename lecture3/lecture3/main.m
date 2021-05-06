//
//  main.m
//  lecture3
//
//  Created by Vladislav Slizhevsky on 5/6/21.
//

#import <Foundation/Foundation.h>
#import "NSDate+DayOfTheWeek.h"

NSString* removeDuplicateSpaces(NSString* str) {
    NSArray *separatedStringArr = [str componentsSeparatedByString:@" "];
    NSArray *filteredArray = [separatedStringArr filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF != ''"]];
    
    return [filteredArray componentsJoinedByString:@" "];
}

NSString* removeRepeatedCharacters(NSString* str) {
    NSUInteger strLength = [str length];
    
    if (!strLength) {
        return nil;
    }
    
    NSMutableString *result = [NSMutableString stringWithFormat:@"%c", [str characterAtIndex:0]];
    
    for(int i = 0; i < strLength; i++) {
        unichar c = [str characterAtIndex:i];
        
        if ([result characterAtIndex:[result length] - 1] != c) {
            [result appendFormat:@"%c", c];
        }
    };

    return result;
}

NSString* getLongestWord(NSString* str) {
    NSArray *filteredArr = [[str componentsSeparatedByString:@" "] filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF != ''"]];
    
    if (![filteredArr count]) {
        return nil;
    }
    
    NSUInteger __block maxLength = 0;
    NSMutableString __block *longestWord = [NSMutableString new];
    
    [filteredArr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj length] > maxLength) {
            maxLength = [obj length];
            longestWord = obj;
        }
    }];
    
    return longestWord;
}

NSInteger getVowelsCount(NSString *str) {
    NSString *lowercasedStr = [str lowercaseString];
    NSCharacterSet *vowelsSet = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    NSInteger vowelsCount = 0;
    
    for (int i = 0; i < [lowercasedStr length]; i++) {
        vowelsCount += [vowelsSet characterIsMember:[lowercasedStr characterAtIndex:i]] ? 1 : 0;
    }
    
    return vowelsCount;
};

BOOL writeToFile(NSString *fileName, NSString *str) {
    NSString *currentDirectoryPath = [[NSFileManager defaultManager] currentDirectoryPath];
    
    return [str writeToFile:[currentDirectoryPath stringByAppendingFormat:@"/%@", fileName] atomically:YES encoding:NSUTF8StringEncoding error:nil];;
}

NSString* readFile(NSString *file) {
    return [NSString stringWithContentsOfFile:file encoding:NSUTF8StringEncoding error:nil];
};

void printCurrentDate() {
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    dateFormatter.dateFormat = @"yyyy-MMM-dd";
    
    NSLog(@"[6]: %@", [dateFormatter stringFromDate:[NSDate now]]);
}

NSString* getDayOfTheWeek() {
    return [[NSDate now] dayOfTheWeek];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"[1]: %@", removeDuplicateSpaces(@"one  two    three"));
        
        NSLog(@"[2]: %@", removeRepeatedCharacters(@"qqqssczzzzxxzzzzz"));
        
        NSLog(@"[3]: %@", getLongestWord(@"one two three          foooooooooouuuuurrr"));
        
        NSLog(@"[4]: %ld", getVowelsCount(@"a  E  u  I  y o"));
        
        NSString *fileName = @"sample.txt";
        NSLog(@"[5]: %d", writeToFile(fileName, @"qwe"));
        NSLog(@"[5]: %@", readFile(fileName));
        
        printCurrentDate();
        
        NSLog(@"[7]: %@", getDayOfTheWeek());
        
        NSLog(@"[8]: %ld", [[NSDate now] hoursFromMagicDate]);
        
    }
    return 0;
}
