//
//  main.m
//  Threelow
//
//  Created by Nelson Chow on 2016-03-09.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "Die.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dice *dice1 = [[Dice alloc] init];
        Dice *dice2 = [[Dice alloc] init];
        Dice *dice3 = [[Dice alloc] init];
        Dice *dice4 = [[Dice alloc] init];
        Dice *dice5 = [[Dice alloc] init];
        
        InputCollector *inputCollector = [[InputCollector alloc] init];

        Die *die = [[Die alloc]init];
        
        [die addDie: dice1];
        [die addDie: dice2];
        [die addDie: dice3];
        [die addDie: dice4];
        [die addDie: dice5];
        
        
        //  Add a collection object outside your while loop to store Dice that have been "held". You should consider which of the Foundation collection types (NSMutableArray, NSMutableDictionary, or NSMutableSet) is best for this task.

        NSMutableSet *heldDie = [[NSMutableSet alloc] init];
        
        
        
        while (YES) {
            
            // give instructions to roll all die
            NSString *input = [inputCollector inputForPrompt:@"Type 'roll' to roll all die"];
            
            
            if ([input isEqualToString: @"roll"]) {
                NSLog(@"Dice 1:%i \ndice 2:%i \ndice 3:%i \ndice 4:%i \ndice 5:%i",[dice1 rollDice], [dice2 rollDice], [dice3 rollDice], [dice4 rollDice], [dice5 rollDice]);
            }else{
                NSLog(@"Invalid input");
            }
            

        }
    }
    return 0;
}
