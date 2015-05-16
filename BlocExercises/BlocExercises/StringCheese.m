//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *message = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    
    return message;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    if (cheeseRange.location == NSNotFound) {
        return cheeseName;
    }
    NSString *sanitizedCheeseName = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
    return sanitizedCheeseName;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSString *message;
    if (cheeseCount == 1) {
        message = @"1 cheese";
    } else {
        message = [NSString stringWithFormat:@"%ld cheeses", (unsigned long)cheeseCount];
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    return message;
}

@end
