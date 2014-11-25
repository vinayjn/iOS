//
//  main.m
//  Test
//
//  Created by Vinay Jain on 25/11/14.
//  Copyright (c) 2014 Vinay Jain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        BNRItem *obj = [[BNRItem alloc] init];
        
        obj.serialNumber = @"1234";
        obj.itemName = @"Macbook Pro";
        obj.valueInDollars = 1200;
        
        NSLog(@"Item name%@ : ",obj.itemName);
    }
    return 0;
}

