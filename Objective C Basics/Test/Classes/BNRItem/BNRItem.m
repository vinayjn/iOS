//
//  BNRItem.m
//  Test
//
//  Created by Vinay Jain on 25/11/14.
//  Copyright (c) 2014 Vinay Jain. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

#pragma mark Class Methods
+ (instancetype)randomItem
{
    // Create an immutable array of three adjectives
    NSArray *randomAdjectiveList = @[@"Fluffy", @"Rusty", @"Shiny"];
    // Create an immutable array of three nouns
    NSArray *randomNounList = @[@"Bear", @"Spork", @"Mac"];
    // Get the index of a random adjective/noun from the lists
    // Note: The % operator, called the modulo operator, gives
    // you the remainder. So adjectiveIndex is a random number
    // from 0 to 2 inclusive.
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];
    // Note that NSInteger is not an object, but a type definition
    // for "long"
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            [randomAdjectiveList objectAtIndex:adjectiveIndex],
                            [randomNounList objectAtIndex:nounIndex]];
    int randomValue = arc4random() % 100;
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10];
    BNRItem *newItem = [[self alloc] initWithItemName:randomName
                                       valueInDollars:randomValue
                                         serialNumber:randomSerialNumber];
    return newItem;
}

#pragma mark Instance Methods

#pragma mark Object Initializers

- (instancetype)init
{
    return [self initWithItemName:@"Item"];
}

-(instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)serialNumber{
    
    //call the super class's designated initializer
    self = [super init];
    
    //did the super class initializer succeed
    if (self) {
        
        _itemName = name;
        _valueInDollars = value;
        _serialNumber = serialNumber;
        
        _dateCreated = [[NSDate alloc] init];
    }
    
    //return the address of newly created object
    return self;
}

-(instancetype)initWithItemName:(NSString *)name{
    
    return [self initWithItemName:name
                   valueInDollars:0
                     serialNumber:@""];
}

-(instancetype)initWithItemName:(NSString *)name serialNumber:(NSString *)serialNumber{
    return [self initWithItemName:name
                   valueInDollars:0
                     serialNumber:serialNumber];
}

#pragma mark Setters
-(void)setSerialNumber:(NSString *)str{
    _serialNumber = str;
}

-(void)setValueInDollars:(int)value{
    _valueInDollars = value;
}

-(void)setItemName:(NSString *)str{
    _itemName = str;
}

#pragma mark Getters

-(NSDate *)dateCreated{
    return _dateCreated;
}

-(NSString *)itemName{
    return _itemName;
}

-(NSString *)serialNumber{
    return _serialNumber;
}

-(int)valueInDollars{
    return _valueInDollars;
}

//description method is overrided so as to NSLog the object
-(NSString *)description{
    
    NSString *descriptionString = [[NSString alloc]initWithFormat:@"\nFollowing are the details of item : \nName : %@\nSerial Number : %@\nValue($) : %d",self.itemName,self.serialNumber,self.valueInDollars ];
    
    return descriptionString;
}

-(void)dealloc{
    NSLog(@"\nDestroyed : %@",self);
}

@end
