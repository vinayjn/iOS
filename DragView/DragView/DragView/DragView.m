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
        self.clipsToBounds = YES;
    }
    
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    startLocation = [[touches anyObject] locationInView:self];
    [self.superview bringSubviewToFront:self];
    self.layer.borderColor = [UIColor greenColor].CGColor;
    self.layer.borderWidth = 3.0f;
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    
    
    CGPoint currentLocation = [[touches anyObject] locationInView:self];
    
    //create offset i.e change in location
    CGFloat dx = currentLocation.x - startLocation.x;
    CGFloat dy = currentLocation.y - startLocation.y;
    
    
    //add the offset to current center of the view
    self.center = CGPointMake(self.center.x + dx, self.center.y + dy);
    
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
    self.layer.borderWidth = 0.0f;
    UIView *redView = [self.superview viewWithTag:1];
    UIView *greenView = [self.superview viewWithTag:2];
    
    if (CGRectContainsPoint(redView.frame, self.frame.origin)) {
        
        [redView addSubview:self];
        [redView bringSubviewToFront:self];
        self.center = redView.center;
    }
    else if (CGRectContainsPoint(greenView.frame, self.frame.origin)) {
        [greenView addSubview:self];
        
        [greenView bringSubviewToFront:self];
        self.center = greenView.center;
    }
}

@end
