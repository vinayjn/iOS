//
//  ViewController.m
//  URLShortening
//
//  Created by Vinay on 12/17/14.
//  Copyright (c) 2014 vinay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIActivityIndicatorView *indicator;
}
@property (weak, nonatomic) IBOutlet UITextField *urlField;
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *shortBtn;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *cpyBtn;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _webView.delegate = self;
    
    indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    indicator.center= CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    indicator.hidesWhenStopped = YES;
    [self.view addSubview:indicator];
    
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
    [indicator startAnimating];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    
    _shortBtn.enabled = YES;
    _urlField.text = webView.request.URL.absoluteString;
    [indicator stopAnimating];
}

-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
