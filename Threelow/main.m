//
//  main.m
//  Threelow
//
//  Created by Nelson Chow on 2016-03-09.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputCollector.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        GameController *game = [[GameController alloc] init];
        
//        Dice *dice1 = [[Dice alloc] init];
//        Dice *dice2 = [[Dice alloc] init];
//        Dice *dice3 = [[Dice alloc] init];
//        Dice *dice4 = [[Dice alloc] init];
//        Dice *dice5 = [[Dice alloc] init];
        
        InputCollector *inputCollector = [[InputCollector alloc] init];

//        Die *die = [[Die alloc]init];
//        
//        [game addDie: dice1];
//        [die addDie: dice2];
//        [die addDie: dice3];
//        [die addDie: dice4];
//        [die addDie: dice5];
        
        
        //  Add a collection object outside your while loop to store Dice that have been "held". You should consider which of the Foundation collection types (NSMutableArray, NSMutableDictionary, or NSMutableSet) is best for this task.

//        NSMutableSet *heldDie = [[NSMutableSet alloc] init];
        
        
        
        while (YES) {
            
            // give instructions to roll all die
            NSString *input = [inputCollector inputForPrompt:@"Type 'roll' to roll all die, 'hold' to hold dice at index."];
            
            
            if ([input isEqualToString: @"roll"]) {
                for (Dice *dice in game.die) {
                    [dice rollDice];
                    NSLog(@"Dice: %i", [dice diceValue]);
                }
                
                
                //    NSLog(@"Dice 1:%i \ndice 2:%i \ndice 3:%i \ndice 4:%i \ndice 5:%i");
                
            }else if ([input isEqualToString: @"hold"]) {
                
                while (YES) {
                    
                    NSString *input2 = [inputCollector inputForPrompt:@"Type the index of the dice to hold (or unhold if it already is held) and enter 'q' when done."];
                    if ([input2 isEqualToString:@"q"]) {
                        break;              // break out of loop if user enters 'q'
                    }
                    
                    if ([input2 intValue] <= 5 && [input2 intValue] >= 0) {
                        
                        int index = [input2 intValue];
                        
                        [game holdDie:index];
                        
                        NSLog(@"Holding on to... ");
                        for (Dice *dice in game.heldDie) {
                            NSLog(@"[%i].", [dice diceValue]);      // prints each die in set
                        }
                        
                    }else {
                        NSLog(@"Invalid input.");
                    }
                }
                
            }else if ([input isEqualToString: @"reset"]) {
                
                [game resetDice];           // removes die from set
                
            }else {
                NSLog(@"Invalid input.");
            }
        }
    }
    return 0;
}
