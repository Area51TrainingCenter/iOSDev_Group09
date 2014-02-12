//
//  ViewController.m
//  TablaEjercicio
//
//  Created by Franti Saúl Huamán Mera on 2/11/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    UINavigationController *nav = segue.destinationViewController;
    TablaViewController *t = (TablaViewController *)nav.topViewController;
    //Paso 7
    t.delegate=self;
}

//Paso 6
- (void)pasardato:(NSString *)dato{
    self.mostrarLabel.text = dato;
}

@end
