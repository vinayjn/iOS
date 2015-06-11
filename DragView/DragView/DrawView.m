//
//  DrawView.m
//  DragView
//
//  Created by BBIM1018 on 6/11/15.
//  Copyright (c) 2015 Vinay Jain. All rights reserved.
//

#import "DrawView.h"

@interface DrawView (){
    
    UIBezierPath *path;
    
}

@end

@implementation DrawView

- (id)initWithCoder:(NSCoder *)aDecoder // (1)
{
    if (self = [super initWithCoder:aDecoder])
    {
        [self setMultipleTouchEnabled:NO]; // (2)
        [self setBackgroundColor:[UIColor whiteColor]];
        path = [UIBezierPath bezierPath];
        [path setLineWidth:2.0];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    [path stroke];
    [[UIColor blackColor] setStroke];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    CGPoint currentLocation = [[touches anyObject] locationInView:self];
    [path moveToPoint:currentLocation];
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    
    
    UITouch *touch = [touches anyObject];
    CGPoint p = [touch locationInView:self];
    [path addLineToPoint:p];
    [self setNeedsDisplay];
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self touchesMoved:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self touchesEnded:touches withEvent:event];
}


@end
