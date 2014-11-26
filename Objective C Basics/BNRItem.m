//
//  BNRItem.m
//  Test
//
//  Created by Vinay Jain on 25/11/14.
//  Copyright (c) 2014 Vinay Jain. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

#pragma mark Initializers

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

@end
