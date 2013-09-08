//
//  BaseNumberStuffViewController.m
//  fun_stuff
//
//  Created by L Ryan Crews on 8/21/13.
//  Copyright (c) 2013 lrcrews. All rights reserved.
//

#import "BaseNumberStuffViewController.h"

#import <math.h>


@interface BaseNumberStuffViewController ()
@property (nonatomic, strong) IBOutlet UITextField * baseNumberTextField;
@property (nonatomic, strong) IBOutlet UITextField * numberStringTextField;
@property (nonatomic, strong) IBOutlet UILabel * baseTenValue;
@end


@implementation BaseNumberStuffViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)go:(id)sender
{
    [self.baseNumberTextField resignFirstResponder];
    [self.numberStringTextField resignFirstResponder];
    
    double base = ([self numberIsInString:[self.baseNumberTextField text]]) ? [[self.baseNumberTextField text] doubleValue] : 10;
    
    [self.baseTenValue setText:[self baseTenValueForValue:[self.numberStringTextField text]
                                                   inBase:base]];
}


- (NSString *)baseTenValueForValue:(NSString *)numberString
                            inBase:(double)base;
{
    if (base < 2)
    {
        return BASE_VALUE_TOO_LOW;
    }
    else if (base > 36)
    {
        return BASE_VALUE_TOO_HIGH;
    }
    
    double value = 0;
    NSArray * arrayOfDigits = [self arrayVersionOfNumberString:numberString];
    for (double i = 0; i < [arrayOfDigits count]; i++)
    {
        double digitValue = [self doubleForDigit:arrayOfDigits[(int)i]];
        if (digitValue >= base)
        {
            return INVALID_CHAR_AT_DIGIT((int)i+1);
        }
        value += pow(base, i) * digitValue;
    }
    return [NSString stringWithFormat:@"%g", value];
}


/*
 *  Each digit in a number (in any base) is itself times the base raised to the power of the position.
 *
 *  As a reminder, 
 *      any number raised to the power of 0 is 1
 *      any number raised to the power of 1 is itself
 *
 *  For example, 123 in base 10 gets its value due to the following math:
 *      value = 3 * 10^0 + 2 * 10^1 + 1 * 10^2
 *      value = 3 * 1 + 2 * 10 + 1 * 100
 *      value = 3 + 20 + 100
 *      value = 123
 *
 *  The same number in base 8:
 *      value = 3 * 8^0 + 2 * 8^1 + 1 * 8^2
 *      value = 3 * 1 + 2 * 8 + 1 * 64
 *      value = 3 + 16 + 64
 *      value = 83
 *
 *  A binary (base 2) example of 101101:
 *      value = 1 * 2^0 + 0 * 2^1 + 1 * 2^2 + 1 * 2^3 + 0 * 2^4 + 1 * 2^5
 *      value = 1 * 1 + 0 * 2 + 1 * 4 + 1 * 8 + 0 * 16 + 1 * 32
 *      value = 1 + 0 + 4 + 8 + 0 + 32
 *      value = 45
 *
 *
 *  Something you may have noticed here is that putting the number in an array
 *  would give us each digit in a position where the index of the array represents
 *  the power the base should be raised to.
 *
 *  The examples above illustrate that point.  You'll notice the order is 'reversed'
 *  from the number's perspective, but in order for the power (10^0, 10^1, then 10^2).
 */
- (NSArray *)arrayVersionOfNumberString:(NSString *)numberString;
{
    NSMutableArray * characters = [[NSMutableArray alloc] initWithCapacity:[numberString length]];
    for (int i = 0; i < [numberString length]; i++)
    {
        NSString * digit = [NSString stringWithFormat:@"%c", [numberString characterAtIndex:i]];
        [characters insertObject:digit
                         atIndex:0];
    }
    return characters;
}


/*
 *  When the digit is a, well... digit, the value is obvious, but what if
 *  it's a hexadecimal number?  A number in base 16 that is.
 *  Here the digit can be 0 to 9, but what's 10?  Well, 10 to 15
 *  (for the total of 0 to 15 for base 16) is A to F.  You'll recognize
 *  this in color definitions in CSS: #FFFFFF, #333333, #ACACAC, etc.
 *
 *  This method gets the value for the given digit, whether it's a number
 *  or a letter.
 */
- (double)doubleForDigit:(NSString *)digit;
{
    if ([self numberIsInString:digit])
    {
        return [digit doubleValue];
    }
    else
    {
        char charDigit = [[digit uppercaseString] characterAtIndex:0];
        return (double)((charDigit - 'A') + 10); // Trust me.
    }
}


/*
 *  Found this on stack overflow, very clever.
 *  http://stackoverflow.com/a/3474311/686871
 */
- (BOOL)numberIsInString:(NSString *)string;
{
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc] init];
    NSNumber * number = [formatter numberFromString:string];
    return !!number; // If the string is not numeric, number will be nil
}


@end
