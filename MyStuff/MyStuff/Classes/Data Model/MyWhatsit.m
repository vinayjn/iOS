//
//  MyWhatsit.m
//  MyStuff
//
//  Created by Vinay on 12/28/14.
//  Copyright (c) 2014 Vinay. All rights reserved.
//

#import "MyWhatsit.h"

@implementation MyWhatsit
{
    
}

-(id)initWithName:(NSString *)name :(NSString *)location{
    
    self = [super init];
    if (self) {
        self.name = name;
        self.location = location;
    }
    
    return self;
    
}

@end
