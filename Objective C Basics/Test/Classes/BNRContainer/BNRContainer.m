//
//  BNRContainer.m
//  Test
//
//  Created by Vinay Jain on 25/11/14.
//  Copyright (c) 2014 Vinay Jain. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

-(instancetype)initWithContainerName:(NSString *)name items:(NSMutableArray *)items valueInDollars:(int)value{
    self = [super init];
    if (self) {
        
        _items = items;
        _valueInDollars = value;
        _containerName = name;
    
    }
    return self;
}

-(void)setContainerName:(NSString *)str{
    
    _containerName = str;
}

-(void)setValueInDollars:(int)value{
    
    _valueInDollars = value;
}

-(NSString *)containerName{
    
    return _containerName;
}

-(int)valueInDollars{
    
    return _valueInDollars;
}

-(NSString *)description{

    for (BNRItem *item in _items )  {
        _valueInDollars += _valueInDollars + item.valueInDollars;
    }
    NSString *descriptionString = [[NSString alloc]initWithFormat:@"\nFollowing are the details of item : \nName : %@ \nValue($) : %d",self.containerName,self.valueInDollars ];
    
    return descriptionString;
}


@end
