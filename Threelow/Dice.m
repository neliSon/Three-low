//
//  Dice.m
//  Threelow
//
//  Created by Nelson Chow on 2016-03-09.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (void) roll {
    _diceValue = (arc4random() % 6) + 1;
}

@end
