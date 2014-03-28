//
//  DetalleViewController.m
//  Puno
//
//  Created by Franti Saúl Huamán Mera on 3/25/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "DetalleViewController.h"

@interface DetalleViewController ()

@end

@implementation DetalleViewController

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
    
    UIBarButtonItem *f = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:self action:@selector(compartirEnFacebook)];
    
    UIBarButtonItem *t = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(compartirEnTwitter)];
    
    self.navigationItem.rightBarButtonItems = [NSArray arrayWithObjects:f, t, nil];
    
    NSLog(@"%@",self.de);
    NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:[self.de objectForKey:@"restaurant_foto"]]];
    self.imagenAMostrar.image = [UIImage imageWithData:imageData];
    
    
	// Do any additional setup after loading the view.
}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)compartirEnFacebook{
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        
        SLComposeViewController *fa = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        [fa setInitialText:[NSString stringWithFormat:@"%@ %@",[self.de objectForKey:@"restaurant_name"], [self.de objectForKey:@"restaurant_foto"]]];
        NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:[self.de objectForKey:@"restaurant_foto"]]];
        
        [fa addImage:[UIImage imageWithData:imageData]];
        [self presentViewController:fa animated:YES completion:nil];
        
        
        NSLog(@"Se encontró");
    }else{
        [[[UIAlertView alloc] initWithTitle:@"Facebook" message:@"No se encontro el servicio" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil, nil] show];
    }
    
    
}
- (void)compartirEnTwitter{
    [[[UIAlertView alloc] initWithTitle:@"Twitter" message:@"Compartir en TW" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil, nil] show];
}

@end
