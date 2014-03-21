//
//  NewViewController.m
//  Bloque
//
//  Created by Franti Saúl Huamán Mera on 3/20/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "NewViewController.h"
#import "Area51Request.h"

@interface NewViewController ()

@end

@implementation NewViewController

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
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark Table View Delegate Methods
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section==1) {
        [Area51Request crearNuevoRegistro:self.nombre.text precio:self.precio.text conBloque:^(BOOL condicion, NSString *message) {
            if (condicion) {
                [self dismissViewControllerAnimated:YES completion:^{
                    [self.delegate actualizarDatos];
                }];
            }else{
                [[[UIAlertView alloc] initWithTitle:@"Oops!" message:message delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil, nil] show];
            }
        }];
    }
}

#pragma mark -
#pragma mark IBAction Method
- (IBAction)cerrarBoton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
