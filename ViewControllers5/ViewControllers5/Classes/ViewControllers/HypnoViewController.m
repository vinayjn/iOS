//
//  HypnoViewController.m
//  ViewControllers5
//
//  Created by Vinay Jain on 03/12/14.
//  Copyright (c) 2014 Vinay Jain. All rights reserved.
//

#import "HypnoViewController.h"
#import "HypnosisView.h"

@interface HypnoViewController ()<UITextFieldDelegate>

@end

@implementation HypnoViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        self.tabBarItem.title = @"Hypnotise";
        UIImage *hypno = [UIImage imageNamed:@"Hypno.png"];
        self.tabBarItem.image = hypno;
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)loadView{
 
    //Create the view :
    
    HypnosisView *backgroundView = [[HypnosisView alloc] init];
    
    //set as this view as the view of viewcontroller
    
    self.view = backgroundView;
    
    CGRect textFieldFrame = CGRectMake(40, 70, 240, 30);
    UITextField *textField = [[UITextField alloc] initWithFrame:textFieldFrame];
    
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.placeholder = @"Enter text";
    textField.returnKeyType = UIReturnKeyDone;
    textField.delegate = self;
    [backgroundView addSubview:textField];
    
    
}

- (void)drawHypnoticMessage:(NSString *)message
{
    for (int i = 0; i < 20; i++) {
        UILabel *messageLabel = [[UILabel alloc] init];
        // Configure the label's colors and text
        messageLabel.backgroundColor = [UIColor clearColor];
        messageLabel.textColor = [UIColor whiteColor];
        messageLabel.text = message;
        // This method resizes the label, which will be relative
        // to the text that it is displaying
        [messageLabel sizeToFit];
        // Get a random x value that fits within the hypnosis view's width
        int width =
        (int)(self.view.bounds.size.width - messageLabel.bounds.size.width);
        int x = arc4random() % width;
        // Get a random y value that fits within the hypnosis view's height
        int height =
        (int)(self.view.bounds.size.height - messageLabel.bounds.size.height);
        int y = arc4random() % height;
        // Update the label's frame
        CGRect frame = messageLabel.frame;
        frame.origin = CGPointMake(x, y);
        messageLabel.frame = frame;
        // Add the label to the hierarchy
        [self.view addSubview:messageLabel];
    }
}

-(BOOL)textFieldShouldReturn:(UITextField*) textField{
    
    [self drawHypnoticMessage:textField.text];
    return YES;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
