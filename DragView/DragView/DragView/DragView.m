//
//  DragView.m
//  DragView
//
//  Created by Vinay Jain on 5/13/15.
//  Copyright (c) 2015 Vinay Jain. All rights reserved.
//

#import "DragView.h"

@implementation DragView{
    
    //store the initial touch location
    CGPoint startLocation;
    
}

-(instancetype)initWithImage:(UIImage *)image{
    
    self = [super initWithImage:image];
    if (self) {
        // by default imageView doesnot supports user interations
        self.userInteractionEnabled = YES;
        
    }
    
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    startLocation = [[touches anyObject] locationInView:self];
    [self.superview bringSubviewToFront:self];
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    
    CGPoint currentLocation = [[touches anyObject] locationInView:self];
    
    //create offset i.e change in location
    CGFloat dx = currentLocation.x - startLocation.x;
    CGFloat dy = currentLocation.y - startLocation.y;
    
    //add the offset to current center of the view
    self.center = CGPointMake(self.center.x + dx, self.center.y + dy);
}
@end
