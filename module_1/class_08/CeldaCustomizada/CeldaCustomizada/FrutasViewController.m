//
//  FrutasViewController.m
//  CeldaCustomizada
//
//  Created by Franti Saúl Huamán Mera on 2/18/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "FrutasViewController.h"
#import "MiCeldaCell.h"

@interface FrutasViewController ()

@end

@implementation FrutasViewController

#pragma mark -
#pragma mark LifeCycle Methods
- (id)initWithStyle:(UITableViewStyle)style{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)viewDidLoad{
    [super viewDidLoad];
}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark - Table View Data Source Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 9;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    MiCeldaCell *cell = [tableView dequeueReusableCellWithIdentifier:@"frutaCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}

@end
