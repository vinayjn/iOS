//
//  main.m
//  Test
//
//  Created by Vinay Jain on 25/11/14.
//  Copyright (c) 2014 Vinay Jain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

#pragma mark Use Setters
        // insert code here...
        BNRItem *obj = [[BNRItem alloc] init];
        
        obj.serialNumber = @"1234";
        obj.itemName = @"Macbook Pro";
        obj.valueInDollars = 1200;
        
        //NSLog(@"Item name : %@",obj.itemName);
        
        
        //when an object is NSLogged, it's description method is called(if implemented)
        //if not implemented thne the superclass method is called
        NSLog(@"%@",obj);
        
        
#pragma mark Use initializers
        //using designated initializer
        BNRItem *item = [[BNRItem alloc] initWithItemName:@"iPhone 5" valueInDollars:300 serialNumber:@"iPhone221sw"];
        
        NSLog(@"%@",item);
        
        //using secondary initializer
        BNRItem *itemWithName = [[BNRItem alloc] initWithItemName:@"iPod 4g"];
        NSLog(@"%@",itemWithName);
        
        //using default initializer
        BNRItem *itemWithDefault = [[BNRItem alloc] init];
        NSLog(@"%@",itemWithDefault);
        
        //RandomItems
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
        
        BNRContainer *container = [[BNRContainer alloc] initWithContainerName:@"Main" items:items valueInDollars:45];
        
        NSLog(@"%@",container);
        
        
    }
    return 0;
}

