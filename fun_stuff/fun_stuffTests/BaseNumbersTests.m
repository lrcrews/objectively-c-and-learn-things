//
//  BaseNumbersTests.m
//  fun_stuff
//
//  Created by L Ryan Crews on 9/7/13.
//  Copyright (c) 2013 lrcrews. All rights reserved.
//

#import "BaseNumbersTests.h"
#import "BaseNumberStuffViewController.h"


@implementation BaseNumbersTests
{
    BaseNumberStuffViewController * controller;
}


- (void)setUp
{
    [super setUp];
    
    controller = [[BaseNumberStuffViewController alloc] init];
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}


// Why are we testing intValues here instead of the String value that's returned?
// Well, the end result may be a string for the controllers purposes, but we really
//  want to ensure that the actual value is correct.  Furthermore, pulling the
//  intValue from the String does acutally validate the String as well (indirectly).


// Value Tests for base 2, 3, 8, 10, and 16, values 0 - 11

- (void)testBaseTwo
{
    STAssertEquals(0,
                   [[controller baseTenValueForValue:@"0"
                                                   inBase:2] intValue],
                   @"The string '0' should equal the base ten value 0");
    
    STAssertEquals(1,
                   [[controller baseTenValueForValue:@"1"
                                              inBase:2] intValue],
                   @"The string '1' should equal the base ten value 1");
    
    STAssertEquals(2,
                   [[controller baseTenValueForValue:@"10"
                                              inBase:2] intValue],
                   @"The string '10' should equal the base ten value 2");
    
   STAssertEquals(3,
                   [[controller baseTenValueForValue:@"11"
                                              inBase:2] intValue],
                   @"The string '11' should equal the base ten value 3");
    
    STAssertEquals(4,
                   [[controller baseTenValueForValue:@"100"
                                              inBase:2] intValue],
                   @"The string '100' should equal the base ten value 4");
    
    STAssertEquals(5,
                   [[controller baseTenValueForValue:@"101"
                                              inBase:2] intValue],
                   @"The string '101' should equal the base ten value 5");
    
    STAssertEquals(6,
                   [[controller baseTenValueForValue:@"110"
                                              inBase:2] intValue],
                   @"The string '110' should equal the base ten value 6");
    
    STAssertEquals(7,
                   [[controller baseTenValueForValue:@"111"
                                              inBase:2] intValue],
                   @"The string '111' should equal the base ten value 7");
    
    STAssertEquals(8,
                   [[controller baseTenValueForValue:@"1000"
                                              inBase:2] intValue],
                   @"The string '1000' should equal the base ten value 8");
    
    STAssertEquals(9,
                   [[controller baseTenValueForValue:@"1001"
                                              inBase:2] intValue],
                   @"The string '1001' should equal the base ten value 9");
    
    STAssertEquals(10,
                   [[controller baseTenValueForValue:@"1010"
                                              inBase:2] intValue],
                   @"The string '1010' should equal the base ten value 10");
    
    STAssertEquals(11,
                   [[controller baseTenValueForValue:@"1011"
                                              inBase:2] intValue],
                   @"The string '1011' should equal the base ten value 11");
}


- (void)testBaseThree
{
    STAssertEquals(0,
                   [[controller baseTenValueForValue:@"0"
                                              inBase:3] intValue],
                   @"The string '0' should equal the base ten value 0");
    
    STAssertEquals(1,
                   [[controller baseTenValueForValue:@"1"
                                              inBase:3] intValue],
                   @"The string '1' should equal the base ten value 1");
    
    STAssertEquals(2,
                   [[controller baseTenValueForValue:@"2"
                                              inBase:3] intValue],
                   @"The string '2' should equal the base ten value 2");
    
    STAssertEquals(3,
                   [[controller baseTenValueForValue:@"10"
                                              inBase:3] intValue],
                   @"The string '10' should equal the base ten value 3");
    
    STAssertEquals(4,
                   [[controller baseTenValueForValue:@"11"
                                              inBase:3] intValue],
                   @"The string '11' should equal the base ten value 4");
    
    STAssertEquals(5,
                   [[controller baseTenValueForValue:@"12"
                                              inBase:3] intValue],
                   @"The string '12' should equal the base ten value 5");
    
    STAssertEquals(6,
                   [[controller baseTenValueForValue:@"20"
                                              inBase:3] intValue],
                   @"The string '20' should equal the base ten value 6");
    
    STAssertEquals(7,
                   [[controller baseTenValueForValue:@"21"
                                              inBase:3] intValue],
                   @"The string '21' should equal the base ten value 7");
    
    STAssertEquals(8,
                   [[controller baseTenValueForValue:@"22"
                                              inBase:3] intValue],
                   @"The string '22' should equal the base ten value 8");
    
    STAssertEquals(9,
                   [[controller baseTenValueForValue:@"100"
                                              inBase:3] intValue],
                   @"The string '100' should equal the base ten value 9");
    
    STAssertEquals(10,
                   [[controller baseTenValueForValue:@"101"
                                              inBase:3] intValue],
                   @"The string '101' should equal the base ten value 10");
    
    STAssertEquals(11,
                   [[controller baseTenValueForValue:@"102"
                                              inBase:3] intValue],
                   @"The string '102' should equal the base ten value 11");
}


- (void)testBaseEight
{
    STAssertEquals(0,
                   [[controller baseTenValueForValue:@"0"
                                              inBase:8] intValue],
                   @"The string '0' should equal the base ten value 0");
    
    STAssertEquals(1,
                   [[controller baseTenValueForValue:@"1"
                                              inBase:8] intValue],
                   @"The string '1' should equal the base ten value 1");
    
    STAssertEquals(2,
                   [[controller baseTenValueForValue:@"2"
                                              inBase:8] intValue],
                   @"The string '2' should equal the base ten value 2");
    
    STAssertEquals(3,
                   [[controller baseTenValueForValue:@"3"
                                              inBase:8] intValue],
                   @"The string '3' should equal the base ten value 3");
    
    STAssertEquals(4,
                   [[controller baseTenValueForValue:@"4"
                                              inBase:8] intValue],
                   @"The string '4' should equal the base ten value 4");
    
    STAssertEquals(5,
                   [[controller baseTenValueForValue:@"5"
                                              inBase:8] intValue],
                   @"The string '5' should equal the base ten value 5");
    
    STAssertEquals(6,
                   [[controller baseTenValueForValue:@"6"
                                              inBase:8] intValue],
                   @"The string '6' should equal the base ten value 6");
    
    STAssertEquals(7,
                   [[controller baseTenValueForValue:@"7"
                                              inBase:8] intValue],
                   @"The string '7' should equal the base ten value 7");
    
    STAssertEquals(8,
                   [[controller baseTenValueForValue:@"10"
                                              inBase:8] intValue],
                   @"The string '10' should equal the base ten value 8");
    
    STAssertEquals(9,
                   [[controller baseTenValueForValue:@"11"
                                              inBase:8] intValue],
                   @"The string '11' should equal the base ten value 9");
    
    STAssertEquals(10,
                   [[controller baseTenValueForValue:@"12"
                                              inBase:8] intValue],
                   @"The string '12' should equal the base ten value 10");
    
    STAssertEquals(11,
                   [[controller baseTenValueForValue:@"13"
                                              inBase:8] intValue],
                   @"The string '13' should equal the base ten value 11");
}


- (void)testBaseTen
{
    STAssertEquals(0,
                   [[controller baseTenValueForValue:@"0"
                                              inBase:10] intValue],
                   @"The string '0' should equal the base ten value 0");
    
    STAssertEquals(1,
                   [[controller baseTenValueForValue:@"1"
                                              inBase:10] intValue],
                   @"The string '1' should equal the base ten value 1");
    
    STAssertEquals(2,
                   [[controller baseTenValueForValue:@"2"
                                              inBase:10] intValue],
                   @"The string '2' should equal the base ten value 2");
    
    STAssertEquals(3,
                   [[controller baseTenValueForValue:@"3"
                                              inBase:10] intValue],
                   @"The string '3' should equal the base ten value 3");
    
    STAssertEquals(4,
                   [[controller baseTenValueForValue:@"4"
                                              inBase:10] intValue],
                   @"The string '4' should equal the base ten value 4");
    
    STAssertEquals(5,
                   [[controller baseTenValueForValue:@"5"
                                              inBase:10] intValue],
                   @"The string '5' should equal the base ten value 5");
    
    STAssertEquals(6,
                   [[controller baseTenValueForValue:@"6"
                                              inBase:10] intValue],
                   @"The string '6' should equal the base ten value 6");
    
    STAssertEquals(7,
                   [[controller baseTenValueForValue:@"7"
                                              inBase:10] intValue],
                   @"The string '7' should equal the base ten value 7");
    
    STAssertEquals(8,
                   [[controller baseTenValueForValue:@"8"
                                              inBase:10] intValue],
                   @"The string '8' should equal the base ten value 8");
    
    STAssertEquals(9,
                   [[controller baseTenValueForValue:@"9"
                                              inBase:10] intValue],
                   @"The string '9' should equal the base ten value 9");
    
    STAssertEquals(10,
                   [[controller baseTenValueForValue:@"10"
                                              inBase:10] intValue],
                   @"The string '10' should equal the base ten value 10");
    
    STAssertEquals(11,
                   [[controller baseTenValueForValue:@"11"
                                              inBase:10] intValue],
                   @"The string '11' should equal the base ten value 11");
}


- (void)testBaseSixteen
{
    STAssertEquals(0,
                   [[controller baseTenValueForValue:@"0"
                                              inBase:16] intValue],
                   @"The string '0' should equal the base ten value 0");
    
    STAssertEquals(1,
                   [[controller baseTenValueForValue:@"1"
                                              inBase:16] intValue],
                   @"The string '1' should equal the base ten value 1");
    
    STAssertEquals(2,
                   [[controller baseTenValueForValue:@"2"
                                              inBase:16] intValue],
                   @"The string '2' should equal the base ten value 2");
    
    STAssertEquals(3,
                   [[controller baseTenValueForValue:@"3"
                                              inBase:16] intValue],
                   @"The string '3' should equal the base ten value 3");
    
    STAssertEquals(4,
                   [[controller baseTenValueForValue:@"4"
                                              inBase:16] intValue],
                   @"The string '4' should equal the base ten value 4");
    
    STAssertEquals(5,
                   [[controller baseTenValueForValue:@"5"
                                              inBase:16] intValue],
                   @"The string '5' should equal the base ten value 5");
    
    STAssertEquals(6,
                   [[controller baseTenValueForValue:@"6"
                                              inBase:16] intValue],
                   @"The string '6' should equal the base ten value 6");
    
    STAssertEquals(7,
                   [[controller baseTenValueForValue:@"7"
                                              inBase:16] intValue],
                   @"The string '7' should equal the base ten value 7");
    
    STAssertEquals(8,
                   [[controller baseTenValueForValue:@"8"
                                              inBase:16] intValue],
                   @"The string '8' should equal the base ten value 8");
    
    STAssertEquals(9,
                   [[controller baseTenValueForValue:@"9"
                                              inBase:16] intValue],
                   @"The string '9' should equal the base ten value 9");
    
    STAssertEquals(10,
                   [[controller baseTenValueForValue:@"A"
                                              inBase:16] intValue],
                   @"The string 'A' should equal the base ten value 10");
    
    STAssertEquals(11,
                   [[controller baseTenValueForValue:@"B"
                                              inBase:16] intValue],
                   @"The string 'B' should equal the base ten value 11");
}


// Leading zeros test

- (void)testLeadingZeros
{
    STAssertEquals(0,
                   [[controller baseTenValueForValue:@"0000"
                                              inBase:2] intValue],
                   @"The string '0000' should equal the base ten value 0");
    
    STAssertEquals(3,
                   [[controller baseTenValueForValue:@"0011"
                                              inBase:2] intValue],
                   @"The string '0011' should equal the base ten value 3");
    
    STAssertEquals(1,
                   [[controller baseTenValueForValue:@"001"
                                              inBase:3] intValue],
                   @"The string '001' should equal the base ten value 1");
    
    STAssertEquals(5,
                   [[controller baseTenValueForValue:@"012"
                                              inBase:3] intValue],
                   @"The string '012' should equal the base ten value 5");
    
    STAssertEquals(333,
                   [[controller baseTenValueForValue:@"014D"
                                              inBase:16] intValue],
                   @"The string '012' should equal the base ten value 333");
    
    
}


// Invalid input tests

- (void)testBaseSize
{
    STAssertEqualObjects(BASE_VALUE_TOO_HIGH,
                         [controller baseTenValueForValue:@"10101"
                                                   inBase:37],
                         @"We should receive an error when our base value is above 36 (0-9 + a-z allows for a base value to 36)");
    
    STAssertEqualObjects(@"1",
                        [controller baseTenValueForValue:@"1"
                                                  inBase:36],
                         @"We should not receive an error when the base is at our max limit");
    
    STAssertEqualObjects(BASE_VALUE_TOO_LOW,
                         [controller baseTenValueForValue:@"10101"
                                                   inBase:1],
                         @"We should receive an error when our base value is below 2 (base one is boring, and everything lower is no-existant imaginary stuff)");
    
    STAssertEqualObjects(@"1",
                         [controller baseTenValueForValue:@"1"
                                                   inBase:2],
                         @"We should not receive an error when the base is at our min limit");
}


- (void)testInputValidity
{
    STAssertEqualObjects(INVALID_CHAR_AT_DIGIT(1),
                         [controller baseTenValueForValue:@"2"
                                                   inBase:2],
                         @"Any character greater than '1' (the character '2' at position 1 in this case) should be invalid in base 2");
    
    STAssertEqualObjects(INVALID_CHAR_AT_DIGIT(3),
                         [controller baseTenValueForValue:@"1a01"
                                                   inBase:2],
                         @"Any character greater than '1' (the character 'a' at position 3 in this case) should be invalid in base 2");
    
    STAssertEqualObjects(INVALID_CHAR_AT_DIGIT(2),
                         [controller baseTenValueForValue:@"FF3AH6"
                                                   inBase:16],
                         @"Any character greater than 'F' (the character 'H' at position 2 in this case) should be invalid in base 16");
    
    STAssertEqualObjects(INVALID_CHAR_AT_DIGIT(4),
                         [controller baseTenValueForValue:@"0bzfee"
                                                   inBase:16],
                         @"Any character greater than 'F' (the character 'z' at position 4 in this case) should be invalid in base 16");
}


@end
