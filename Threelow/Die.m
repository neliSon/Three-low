//
//  Die.m
//  Threelow
//
//  Created by Nelson Chow on 2016-03-09.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import "Die.h"
#import "Dice.h"

@implementation Die

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.die = [NSMutableArray array];
    }
    return self;
}

- (void) addDie: (Dice *) newDice {
    [self.die addObject : newDice];
}

@end
