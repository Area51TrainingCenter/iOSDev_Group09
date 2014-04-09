//
//  MiToolbarViewController.m
//  FormBuenaPractica
//
//  Created by Franti Saúl Huamán Mera on 4/8/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "MiToolbarViewController.h"

@interface MiToolbarViewController ()

@end

@implementation MiToolbarViewController

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
- (IBAction)adelanteButton:(id)sender {
    [self.delegate pasarhaciaadelante];
}
- (IBAction)atrasButton:(id)sender {
    [self.delegate pasarhaciaatras];
}
- (IBAction)cerrarButton:(id)sender {
    [self.delegate pasarcerrar];
}
@end
