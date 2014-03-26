//
//  NuevoViewController.m
//  Puno
//
//  Created by Franti Saúl Huamán Mera on 3/25/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "NuevoViewController.h"

@interface NuevoViewController ()

@end

@implementation NuevoViewController

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
- (IBAction)cerrarButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)guardarButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        [self.delegate actulizarData];
    }];
}
@end
