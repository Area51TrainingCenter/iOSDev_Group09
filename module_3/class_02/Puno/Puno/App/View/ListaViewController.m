//
//  ListaViewController.m
//  Puno
//
//  Created by Franti Saúl Huamán Mera on 3/25/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "ListaViewController.h"
#import "NuevoViewController.h"
#import "DetalleViewController.h"

#import "LocalCell.h"
#import "FilaSeleccionada.h"

@interface ListaViewController ()<NuevoViewControllerDelegate, LocalCellDelegate>
@property (nonatomic, strong) NSArray *listaDeRestaurantes;
@end

@implementation ListaViewController

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
    [self actulizarData];
}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"nuevoSegue"]) {
        UINavigationController *nav = segue.destinationViewController;
        NuevoViewController *p = (NuevoViewController *)nav.topViewController;
        p.delegate = self;
    }
}

#pragma mark -
#pragma mark - Table View Data Source Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.listaDeRestaurantes count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    LocalCell *cell = [tableView dequeueReusableCellWithIdentifier:@"localCell" forIndexPath:indexPath];
    cell.selectedBackgroundView = [FilaSeleccionada new];
    cell.delegate = self;
    PFObject *bean = [self.listaDeRestaurantes objectAtIndex:indexPath.row];
    cell.nombre_restaurante.text =[bean objectForKey:@"restaurant_name"];
    cell.precio_restaurante.text = [bean objectForKey:@"restaurant_address"];
    cell.botonQueMuestraFoto.tag= indexPath.row;
    return cell;
}

#pragma mark -
#pragma mark Table View Delegate Methods
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}

#pragma mark -
#pragma mark Nuevo View Delegate Method
- (void)actulizarData{
    [PunoRequest traerListaDeRestaurantes:^(NSArray *restaurantes, NSError *error) {
        if (!error) {
            self.listaDeRestaurantes = restaurantes;
            //NSLog(@"%@",self.listaDeRestaurantes);
            [self.tableView reloadData];
        }else{
            [[[UIAlertView alloc] initWithTitle:@"Parse" message:@"No se pudo obtener la lista de restaurantes" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil, nil] show];
        }
    }];
}

#pragma mark -
#pragma mark Local Cell Delegate Method
- (void)mostrarFotoEnGrande:(id)sender{
    UIButton *actualBoton = (UIButton *)sender;
    DetalleViewController *ty = [self.storyboard instantiateViewControllerWithIdentifier:@"detalleSegue"];
    ty.de = [self.listaDeRestaurantes objectAtIndex:actualBoton.tag];
    [self.navigationController pushViewController:ty animated:YES];
    
    
    NSLog(@"Acción en el UITableViewController");
}
@end
