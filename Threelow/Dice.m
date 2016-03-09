//
//  Dice.m
//  Threelow
//
//  Created by Nelson Chow on 2016-03-09.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import "Dice.h"

@implementation Dice

@synthesize diceValue, points;

- (int) rollDice {
    diceValue = (arc4random() % 6) + 1;
    return diceValue;
}

@end
