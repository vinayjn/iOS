//
//  HypnoViewController.m
//  ViewControllers5
//
//  Created by Vinay Jain on 03/12/14.
//  Copyright (c) 2014 Vinay Jain. All rights reserved.
//

#import "HypnoViewController.h"
#import "HypnosisView.h"

@interface HypnoViewController ()

@end

@implementation HypnoViewController

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
