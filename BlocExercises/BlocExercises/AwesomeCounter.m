//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableString *output = [NSMutableString stringWithString: @""];
    NSInteger start = (number > otherNumber) ? otherNumber : number;
    NSInteger end = (number > otherNumber) ? number : otherNumber;
    while (start <= end) {
        [output appendFormat:@"%ld", (long)start];
        start++;
    }
    return output;
}

@end
