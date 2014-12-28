//
//  MyWhatsit.h
//  MyStuff
//
//  Created by Vinay on 12/28/14.
//  Copyright (c) 2014 Vinay. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyWhatsit : NSObject{
    
}

@property(strong,nonatomic) NSString *name;
@property(strong,nonatomic) NSString *location;


-(id)initWithName :(NSString*)name : (NSString*)location;

@end
