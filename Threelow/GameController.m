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
//        Dice *dice1 = [[Dice alloc] init];
//        Dice *dice2 = [[Dice alloc] init];
//        Dice *dice3 = [[Dice alloc] init];
//        Dice *dice4 = [[Dice alloc] init];
//        Dice *dice5 = [[Dice alloc] init];
        
        _die = [NSMutableArray array];
        _heldDie = [NSMutableSet set];
        
        for (int i = 0 ; i < 5; i++){
             Dice *dice = [[Dice alloc] init];
            [self.die addObject: dice];
        }
        
        
        
    }
    return self;
}

//  add dice if its not already in set, removes if it is.
- (void) holdDie:(int)index {
    if (![self.heldDie containsObject: self.die[index]]) {
        [self.heldDie addObject: self.die[index]];
    }else {
        [self.heldDie removeObject: self.die[index]];
    }
}

- (void) resetDice {
    [self.heldDie removeAllObjects];
}

//- (void) addDie: (Dice *) newDice {
//    [self.die addObject : newDice];
//}

@end
