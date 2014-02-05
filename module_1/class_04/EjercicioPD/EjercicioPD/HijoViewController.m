//
//  HijoViewController.m
//  EjercicioPD
//
//  Created by Franti Saúl Huamán Mera on 2/4/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "HijoViewController.h"

@interface HijoViewController ()

@end

@implementation HijoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)colorRojo:(id)sender {
    //Paso 3
    [self.midelegado pasarColorAlPapa:[UIColor redColor]];
}
- (IBAction)colorAzul:(id)sender {
    //Paso 3
    [self.midelegado pasarColorAlPapa:[UIColor blueColor]];
}
- (IBAction)colorVerde:(id)sender {
    //Paso 3
    [self.midelegado pasarColorAlPapa:[UIColor greenColor]];
}
- (IBAction)colorNegro:(id)sender {
    //Paso 3
    [self.midelegado pasarColorAlPapa:[UIColor blackColor]];
}
@end
