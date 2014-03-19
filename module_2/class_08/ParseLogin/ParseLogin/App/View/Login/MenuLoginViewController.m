//
//  MenuLoginViewController.m
//  ParseLogin
//
//  Created by Franti Saúl Huamán Mera on 3/18/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "MenuLoginViewController.h"
#import "FormViewController.h"

@interface MenuLoginViewController ()

@end

@implementation MenuLoginViewController

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
    FormViewController *t = segue.destinationViewController;
    if ([segue.identifier isEqualToString:@"registrarSegue"]) {
        t.title=@"Nuevo";
        t.tipo=0;
    }else if ([segue.identifier isEqualToString:@"ingresarSegue"]){
        t.title=@"Ingresar";
        t.tipo=1;
    }
}
@end
