//
//  BNRItem.m
//  Test
//
//  Created by Vinay Jain on 25/11/14.
//  Copyright (c) 2014 Vinay Jain. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

-(void)setSerialNumber:(NSString *)str{
    _serialNumber = str;
}

-(void)setValueInDollars:(int)value{
    _valueInDollars = value;
}

-(void)setItemName:(NSString *)str{
    _itemName = str;
}

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

@end
