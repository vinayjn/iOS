//
//  BNRContainer.h
//  Test
//
//  Created by Vinay Jain on 25/11/14.
//  Copyright (c) 2014 Vinay Jain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

@interface BNRContainer : BNRItem{
    NSString *_containerName;
    NSMutableArray *_items;
    int valueInDollars;
}

//Designated initialiser
-(instancetype)initWithContainerName :(NSString*)name
                                items:(NSMutableArray*)items
                       valueInDollars:(int)value;

#pragma mark Getters and Setters
-(void)setContainerName:(NSString *)str;
-(NSString*)containerName;

-(void)setValueInDollars:(int)value;
-(int)valueInDollars;

@end
