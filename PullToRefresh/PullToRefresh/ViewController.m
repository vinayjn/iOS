//
//  ViewController.m
//  PullToRefresh
//
//  Created by BBIM1018 on 6/3/15.
//  Copyright (c) 2015 Vinay Jain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSMutableArray *tableData;
}

@end

@implementation ViewController

#pragma mark -TableView Methods

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (tableData) {
        return [tableData count];
    }
    else{
        
        UILabel *messageLabel = [[UILabel alloc] initWithFrame:CGRectMake(0,0,50,50)];
        messageLabel.text = @"No data available, please pull down to refresh";
        [messageLabel setFont:[UIFont fontWithName:@"HelveticaNeue-Thin" size:40.0]];
        
        messageLabel.numberOfLines=0;
        messageLabel.center = self.view.center;
        messageLabel.textAlignment = NSTextAlignmentCenter;
        [messageLabel sizeToFit];
        
        self.tableView.backgroundView = messageLabel;
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        return 0;
    }
    
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    cell.textLabel.text = [[tableData objectAtIndex:indexPath.row] valueForKey:@"name"];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
}
- (IBAction)refreshData:(UIRefreshControl *)sender {
    
    
    [self getServerData];
    
    
}

-(void)getServerData{
    
    NSURLSession* session = [NSURLSession sharedSession];
    
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:@"http://api.kivaws.org/v1/loans/newest.json"] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
        
        tableData = [jsonDictionary valueForKey:@"loans"];
        
        [self reloadTable];
        
    }];
    
    [dataTask resume];
}

-(void)reloadTable{
    
    self.tableView.backgroundView = nil;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    
    [self.tableView reloadData];
    
    [self.refreshControl endRefreshing];
}

@end
