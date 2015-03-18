//
//  Children.h
//  UseKVO_KVC
//
//  Created by Vinay Jain on 3/19/15.
//  Copyright (c) 2015 Vinay Jain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Children : NSObject

@property (nonatomic, strong) NSString *name;

@property (nonatomic) NSUInteger age;
@property (nonatomic, strong) Children *child;

@end
