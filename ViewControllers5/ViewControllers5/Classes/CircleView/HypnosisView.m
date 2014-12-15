//
//  HypnosisView.m
//  Concentric Circles
//
//  Created by Vinay Jain on 27/11/14.
//  Copyright (c) 2014 Vinay Jain. All rights reserved.
//

#import "HypnosisView.h"

@interface HypnosisView ()
@property (strong,nonatomic) UIColor *circleColor;
@end

@implementation HypnosisView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // All BNRHypnosisViews start with a clear background color
        self.backgroundColor = [UIColor clearColor];
        self.circleColor = [UIColor lightGrayColor];
    }
    return self;
}
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGRect bounds = self.window.bounds;
    
    //Center of the circle
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width/2.0;
    center.y = bounds.origin.y + bounds.size.height/2.0;
    
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    [self.circleColor setStroke];
    float maxRadius = (hypotf(bounds.size.width, bounds.size.height))/2.0;
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        [path moveToPoint:CGPointMake(center.x+currentRadius, center.y)];
        [path addArcWithCenter:center
                        radius:currentRadius // Note this is currentRadius!
                    startAngle:0.0
                      endAngle:M_PI * 2.0
                     clockwise:YES];
    }
    
    // Configure line width to 10 points
    path.lineWidth = 10.0;
    // Draw the line!
    [path stroke];

}
- (void)setCircleColor:(UIColor *)circleColor
{
    _circleColor = circleColor;
    [self setNeedsDisplay];
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    float red = (arc4random() % 100) / 100.0;
    float green = (arc4random() % 100) / 100.0;
    float blue = (arc4random() % 100) / 100.0;
    
    UIColor *randomColor = [UIColor colorWithRed:red
                                           green:green
                                            blue:blue
                                           alpha:1];
    [self setCircleColor:randomColor];
}
@end
