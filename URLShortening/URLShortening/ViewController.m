//
//  ViewController.m
//  URLShortening
//
//  Created by Vinay on 12/17/14.
//  Copyright (c) 2014 vinay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *urlField;

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UITextField *shortURLField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
//- (IBAction)clickedRefresh:(id)sender {
//}
- (IBAction)clickedShort:(id)sender {
}
- (IBAction)clickedCopy:(id)sender {
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
