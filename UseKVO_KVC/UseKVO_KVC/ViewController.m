//
//  ViewController.m
//  UseKVO_KVC
//
//  Created by Vinay Jain on 3/19/15.
//  Copyright (c) 2015 Vinay Jain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) Children *child1;

@property (nonatomic, strong) Children *child2;

@property (nonatomic, strong) Children *child3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.child1 = [[Children alloc] init];
//    self.child1.name = @"George";
//    self.child1.age = 15;
//    
//    NSLog(@"%@, %d", self.child1.name, self.child1.age);
    
    [self.child1 setValue:@"George" forKey:@"name"];
    [self.child1 setValue:[NSNumber numberWithInteger:15] forKey:@"age"];
    
    NSString *childName = [self.child1 valueForKey:@"name"];
    NSUInteger childAge = [[self.child1 valueForKey:@"age"] integerValue];
    
    NSLog(@"%@, %d", childName, childAge);
    
}
- (IBAction)changedValue:(UIButton *)sender {
    
    [self.child1 setValue:@"Vinay" forKey:@"name"];
    [self.child1 setValue:[NSNumber numberWithInteger:22] forKey:@"age"];
}

-(void)viewWillAppear:(BOOL)animated{
    [self.child1 addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
    [self.child1 addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
    
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    
    if ([keyPath isEqualToString:@"name"]) {
        NSLog(@"The name of the child was changed.");
        NSLog(@"%@", change);
    }
    
    if ([keyPath isEqualToString:@"age"]) {
        NSLog(@"The age of the child was changed.");
        NSLog(@"%@", change);
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
