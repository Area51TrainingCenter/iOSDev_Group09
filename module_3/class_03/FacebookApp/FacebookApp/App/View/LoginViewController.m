//
//  LoginViewController.m
//  FacebookApp
//
//  Created by Franti Saúl Huamán Mera on 3/27/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "LoginViewController.h"
#import "FBAreaRequest.h"
#import "AppDelegate.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

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

#pragma mark -
#pragma mark IBAction Methods
- (IBAction)ingresarusandoFBButton:(id)sender {
    [FBAreaRequest ingresarAFacebook:^(BOOL condicion, NSError *error) {
        if (condicion) {
            AppDelegate *t = [[UIApplication sharedApplication] delegate];
            [t mostrarApp];
        }else{
            
        }
    }];
}
@end
