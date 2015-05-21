//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    return [NSNumber numberWithInt: (number.intValue * 2)];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableArray *newArray = [@[] mutableCopy];
    
    NSInteger start = number < otherNumber ? number : otherNumber;
    NSInteger end   = otherNumber > number ? otherNumber : number;
    
    for (NSInteger i = start; i <= end; i++) {
        [newArray addObject:@(i)];
    }
    return newArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSNumber *lowest = @0;
    for (NSNumber *value in arrayOfNumbers) {
        if ([lowest intValue] > [value intValue]) {
            lowest = value;
        }
    }
    return [lowest intValue];
}

@end
