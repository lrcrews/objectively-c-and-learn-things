//
//  BaseNumberStuffViewController.h
//  fun_stuff
//
//  Created by L Ryan Crews on 8/21/13.
//  Copyright (c) 2013 lrcrews. All rights reserved.
//

#import <UIKit/UIKit.h>

#define BASE_VALUE_TOO_LOW          @"sorry, I need at least a base of 2"
#define BASE_VALUE_TOO_HIGH         @"sorry, I don't go above base 36"
#define INVALID_CHAR_AT_DIGIT(int)  [NSString stringWithFormat:@"invalid character at digit %d", int]

@interface BaseNumberStuffViewController : UIViewController

// Public only to simplify test cases, normally the logic being
//  tested should be in an approiate model/helper
- (NSString *)baseTenValueForValue:(NSString *)numberString
                            inBase:(double)base;

@end
