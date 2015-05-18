//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    return characterDictionary[@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    // I originally had:
    // NSMutableArray *drinksArray = [@[] muteableCopy]
    // But this feels like a little bit of a waste...
    // 
    NSMutableArray *drinksArray = [[NSMutableArray alloc] init];
    for (NSDictionary *dict in charactersArray) {
        [drinksArray addObject:dict[@"favorite drink"]];
    }
    return drinksArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *newCharacterDictionary = [characterDictionary mutableCopy];
    [newCharacterDictionary setObject:@"This is a quote" forKey:@"quote"];
    return newCharacterDictionary;
}

@end
