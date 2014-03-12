//
//  LoginMenuViewController.m
//  Login
//
//  Created by Franti Saúl Huamán Mera on 3/11/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "LoginMenuViewController.h"
#import "LoginFormViewController.h"

@interface LoginMenuViewController ()

@end

@implementation LoginMenuViewController

#pragma mark -
#pragma mark LifeCycle Methods
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)viewDidLoad{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    LoginFormViewController *t = segue.destinationViewController;
    t.esRegistro= NO;
}

- (IBAction)registrarButtom:(id)sender {
    LoginFormViewController *t = [self.storyboard instantiateViewControllerWithIdentifier:@"formScene"];
    t.esRegistro=YES;
    [self.navigationController pushViewController:t animated:YES];
}
@end
