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
        
        InputCollector *inputCollector = [[InputCollector alloc] init];
        
        
        while (YES) {
            
            // give instructions to roll all die
            NSString *input = [inputCollector inputForPrompt:@"Type 'roll' to roll all die, 'hold' to select index of the dice to hold, 'reset' to remove all held die."];
            
            
            if ([input isEqualToString: @"roll"]) {
                [game rollDice];                            // roll each dice in array
            }
            
            
            else if ([input isEqualToString: @"hold"]) {
                
                while (YES) {
                    
                    NSString *input2 = [inputCollector inputForPrompt:@"Type the index of the dice to hold (or unhold if it already is held) and enter 'q' when done."];
                    if ([input2 isEqualToString:@"q"]) {
                        break;              // break out of loop if user enters 'q'
                    }
                    
                    int index = [input2 intValue];
                    
                    [game holdDie:index];
                    
                    NSLog(@"Holding on to... ");
                    for (Dice *dice in game.heldDie) {
                        NSLog(@"[%i].", [dice diceValue]);      // prints each die in set
                    }
                }
                
            }else if ([input isEqualToString: @"reset"]) {
                
                [game resetDice];           // removes all die from set
            
            }else if ([input isEqualToString: @"score"]) {
                
                
                NSLog(@"%d", [game calculateScore]);
                
            }else {
                NSLog(@"Invalid input.");
            }
        }
    }
    return 0;
}
