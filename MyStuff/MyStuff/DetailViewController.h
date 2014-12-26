//
//  DetailViewController.h
//  MyStuff
//
//  Created by Vinay on 12/25/14.
//  Copyright (c) 2014 Vinay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

