//
//  ViewController.m
//  SendEmail
//
//  Created by Vinay on 12/16/14.
//  Copyright (c) 2014 Vinay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    
    MFMailComposeViewController *mailComposer;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sendEmail:(id)sender {
    
    mailComposer = [[MFMailComposeViewController alloc] init];
    mailComposer.mailComposeDelegate = self;
    [mailComposer setSubject:@"Test Message from iOS"];
    [mailComposer setMessageBody:@"Hi, \nThis is a Test Message" isHTML:NO];
    [self presentViewController:mailComposer animated:YES completion:nil];
    
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    
    if (result) {
        NSLog(@"%u",result);
    }
    else if (error) {
        NSLog(@"%@",error);
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
