//
//  ViewController.m
//  UseKVO_KVC
//
//  Created by Vinay Jain on 3/19/15.
//  Copyright (c) 2015 Vinay Jain. All rights reserved.
//

#import "ViewController.h"
static void *child1Context = &child1Context;
static void *child2Context = &child2Context;

@interface ViewController ()

@property (nonatomic, strong) Children *child1;

@property (nonatomic, strong) Children *child2;


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
    
    
    self.child2 = [[Children alloc] init];
    
    childName = [self.child2 valueForKey:@"name"];
    childAge = [[self.child2 valueForKey:@"age"] integerValue];
    
}
- (IBAction)changedValue:(UIButton *)sender {
    
    [self.child1 setValue:@"Vinay" forKey:@"name"];
    [self.child1 setValue:[NSNumber numberWithInteger:22] forKey:@"age"];
    
    [self.child2 setValue:@"Jain" forKey:@"name"];
    [self.child2 setValue:[NSNumber numberWithInteger:22] forKey:@"age"];
}

-(void)viewWillAppear:(BOOL)animated{
    [self.child1 addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:child1Context];
    [self.child1 addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:child1Context];
    
    [self.child2 addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:child2Context];
    [self.child2 addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:child2Context];
    
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    
    if (context == child1Context) {
        
        
        if ([keyPath isEqualToString:@"name"]) {
            NSLog(@"The name of the first child was changed.");
            NSLog(@"%@", change);
        }
        
        if ([keyPath isEqualToString:@"age"]) {
            NSLog(@"The age of the first child was changed.");
            NSLog(@"%@", change);
        }
    }
    else if (context == child2Context) {
        
        
        if ([keyPath isEqualToString:@"name"]) {
            NSLog(@"The name of the second child was changed.");
            NSLog(@"%@", change);
        }
        
        if ([keyPath isEqualToString:@"age"]) {
            NSLog(@"The age of the second child was changed.");
            NSLog(@"%@", change);
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
