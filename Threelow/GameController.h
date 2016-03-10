//
//  GameController.h
//  Threelow
//
//  Created by Nelson Chow on 2016-03-09.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property (nonatomic) int accumulator;
@property NSMutableArray *die;
@property NSMutableSet *heldDie;

- (int) calculateScore;
- (void) rollDice;
- (void) holdDie: (int) index;
- (void) resetDice;
- (void) print;

//- (void) addDie: (Dice *) newDice;


@end
