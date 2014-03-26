//
//  NuevoViewController.m
//  Puno
//
//  Created by Franti Saúl Huamán Mera on 3/25/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "NuevoViewController.h"
#import "RestauranteBean.h"

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
    RestauranteBean *restaurant = [RestauranteBean new];
    restaurant.name = self.cajaNombre.text;
    restaurant.address = self.cajaDirección.text;
    restaurant.foodStyle = self.cajaTipoComida.text;
    [PunoRequest nuevoRestaurante:restaurant conBloque:^(BOOL condicion, NSError *error) {
        if (condicion) {
            [self.delegate actulizarData];
            [self dismissViewControllerAnimated:YES completion:nil];
        }else{
            [[[UIAlertView alloc] initWithTitle:@"Parse" message:@"No se pudo guardar el registro en Parse" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil, nil] show];
        }
    }];
}
@end
