//
//  BNRItem.h
//  Test
//
//  Created by Vinay Jain on 25/11/14.
//  Copyright (c) 2014 Vinay Jain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject{
    
    NSString *_itemName;
    NSString *_serialNumber;
    NSDate *_dateCreated;
    int _valueInDollars;
    
}

-(void)setItemName:(NSString *)str;
-(NSString*)itemName;

-(void)setSerialNumber:(NSString *)str;
-(NSString*)serialNumber;

-(void)setValueInDollars:(int)value;
-(int)valueInDollars;

-(NSDate *)dateCreated;
@end
