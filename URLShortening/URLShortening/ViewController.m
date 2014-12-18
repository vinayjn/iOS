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
@property (weak, nonatomic) IBOutlet UIBarButtonItem *shortBtn;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *cpyBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
#pragma mark IBActions
- (IBAction)loadURL:(id)sender{
    
    NSString *urlText = _urlField.text;
    
    if (![urlText hasPrefix:@"https:"] && ![urlText hasPrefix:@"http:"]) {
        if (![urlText hasPrefix:@"//"]) {
            urlText = [@"//" stringByAppendingString:urlText];
        }
        urlText = [@"http://" stringByAppendingString:urlText];
    }
    NSURL *url = [NSURL URLWithString:urlText];
    [_webView loadRequest:[NSURLRequest requestWithURL:url]];

}

- (IBAction)clickedShort:(id)sender {
}
- (IBAction)clickedCopy:(id)sender {
}

#pragma mark UIWebView Delegate methods

-(void)webViewDidStartLoad:(UIWebView *)webView{
    
    _shortBtn.enabled = NO;
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    
    _shortBtn.enabled = YES;
    _urlField.text = webView.request.URL.absoluteString;
    
}

-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
