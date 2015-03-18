//
//  Children.m
//  UseKVO_KVC
//
//  Created by Vinay Jain on 3/19/15.
//  Copyright (c) 2015 Vinay Jain. All rights reserved.
//

#import "Children.h"

@implementation Children

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"";
        self.age = 0;
    }
    return self;
}

@end
