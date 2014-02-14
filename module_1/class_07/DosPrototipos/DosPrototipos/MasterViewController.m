//
//  MasterViewController.m
//  DosPrototipos
//
//  Created by Franti Saúl Huamán Mera on 2/13/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "MasterViewController.h"

@interface MasterViewController ()

@end

@implementation MasterViewController

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
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section==0) {
        return 3;
    }else {
        return 2;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section==0) {
        if (indexPath.row==0) {
            UITableViewCell *b = [tableView dequeueReusableCellWithIdentifier:@"basicCell" forIndexPath:indexPath];
            b.textLabel.text = @"Manzana";
            return b;
        }else if (indexPath.row==1){
            UITableViewCell *b = [tableView dequeueReusableCellWithIdentifier:@"basicCell" forIndexPath:indexPath];
            b.textLabel.text = @"Naranja";
            return b;
        }else{
            UITableViewCell *u = [tableView dequeueReusableCellWithIdentifier:@"leftCell" forIndexPath:indexPath];
            u.textLabel.text = @"Fresa";
            u.detailTextLabel.text = [NSString stringWithFormat:@"%i",indexPath.row];
            u.imageView.frame = CGRectMake(0, 0, 25, 25);
            u.imageView.image = [UIImage imageNamed:@"fella"];
            return u;
        }
    }else{
        if (indexPath.row==0) {
            UITableViewCell *t =[tableView dequeueReusableCellWithIdentifier:@"leftCell" forIndexPath:indexPath];
            t.textLabel.text = @"Tokyo";
            t.detailTextLabel.text = [NSString stringWithFormat:@"%i",indexPath.row];
            return t;
        }else{
            UITableViewCell *w =[tableView dequeueReusableCellWithIdentifier:@"basicCell" forIndexPath:indexPath];
            w.textLabel.text = @"Lima";
            return w;
        }
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section==0) {
        return @"Frutas";
    }else{
        return @"Ciudades";
    }
}
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    if (section==0) {
        return @"";
    }else{
        return @"Lista de ciudades";
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70;
}
@end
