//
//  NuevoViewController.m
//  EjercicioMVC
//
//  Created by Franti Saúl Huamán Mera on 2/27/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "NuevoViewController.h"
#import "Objeto.h"
#import "EjercicioController.h"

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

#pragma mark -
#pragma mark Table View Delegate Methods
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section==2) {
        Objeto *actual = [Objeto new];
        actual.nombre = self.cajaNombre.text;
        actual.precio = self.cajaPrecio.text;
        actual.origen = self.cajaOrigen.text;
        actual.tipo = self.esTuberculo.on;
        //registrar
        if ([[EjercicioController sharedInstance] guardarRegistro:actual]) {
            [self dismissViewControllerAnimated:YES completion:nil];
        }
    }else{
        
    }
}
@end
