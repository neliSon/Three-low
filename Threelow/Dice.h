//
//  Dice.h
//  Threelow
//
//  Created by Nelson Chow on 2016-03-09.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic) int diceValue, points;

- (int) rollDice;
- (int) diceValue;
- (int) points;

@end
