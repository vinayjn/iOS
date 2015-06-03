//
//  ViewController.m
//  DragView
//
//  Created by Vinay Jain on 5/13/15.
//  Copyright (c) 2015 Vinay Jain. All rights reserved.
//

#import "ViewController.h"
#import "DragView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    CGFloat maxX = CGRectGetMaxX(self.view.frame);
    CGFloat maxY = CGRectGetMaxY(self.view.frame);
    
    for (int i =0; i<2; i++) {
        DragView *dragImage = [[DragView alloc] initWithImage:[UIImage imageNamed:@"home"]];
        [self.view addSubview:dragImage];
        CGPoint center = CGPointMake(arc4random() % (int)maxX, arc4random() % (int)maxY);
        dragImage.center = center;
    }
    
}


@end
