//
//  GameController.m
//  Threelow
//
//  Created by Nelson Chow on 2016-03-09.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import "GameController.h"


@implementation GameController


- (instancetype)init
{
    self = [super init];
    if (self) {
       
        _die = [NSMutableArray array];
        _heldDie = [NSMutableSet set];
        
        for (int i = 0 ; i < 5; i++){
             Dice *dice = [[Dice alloc] init];
            [self.die addObject: dice];
        }
    }
    return self;
}

- (void) rollDice{
    for (Dice *dice in self.die) {
        if (![self.heldDie containsObject:dice]) {
            [dice roll];
            NSLog(@"Rolled %d", dice.diceValue);
        } else {
            NSLog(@"Held [%d]", dice.diceValue);
        }
    }
}

//  add dice if its not already in set, removes if it is.
- (void) holdDie:(int)index {
    if (index <= _die.count && index >= 0) {
        Dice *dice = self.die[index];
    
    if (![self.heldDie containsObject:dice]) {
        [self.heldDie addObject: dice];
    }else {
        [self.heldDie removeObject: dice];
    }
    }else {
        NSLog(@"Invalid input.");
    }
}

- (void) resetDice {
    [self.heldDie removeAllObjects];
}

- (int) calculateScore {
    for (Dice *dice in _heldDie) {
        if (dice.diceValue != 3) {
            _accumulator += dice.diceValue;
        }
    }
    return _accumulator;
}





//  single method that prints all the dice values, held state, and the current score.

- (void) print {
//    Dice *dice = self.die;
//
//    NSLog(@"%d", dice.diceValue);
    
    
}


@end
