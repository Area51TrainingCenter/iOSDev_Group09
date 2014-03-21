//
//  ListViewController.m
//  Bloque
//
//  Created by Franti Saúl Huamán Mera on 3/20/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "ListViewController.h"
#import "Area51Request.h"
#import "NewViewController.h"

@interface ListViewController ()<NewViewControllerDelegate>
@property (nonatomic, strong) NSArray *platos;
@end

@implementation ListViewController

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
    /*
    [Area51Request ingresarNombre:@"Hernan" password:@"holamundo" email:@"hernan@gmail.com" conBloque:^(BOOL exito, NSString *mensaje) {
        NSLog(@"%@",mensaje);
        NSLog(exito?@"YES":@"NO");
    }];
    
    [Area51Request crearArregloCondatos:^(NSArray *miArreglo) {
        NSLog(@"%@",miArreglo);
    }];
    
    [Area51Request bloqueUno:^(NSArray *miArray, NSString *miString) {
        NSLog(@"%@",miArray);
    } bloqueDos:^(NSError *error, NSString *miString) {
        NSLog(@"%@",miString);
    }];*/
}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    UINavigationController *nav = segue.destinationViewController;
    NewViewController *n = (NewViewController *)nav.topViewController;
    n.delegate=self;
}

#pragma mark -
#pragma mark - Table View Data Source Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.platos count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"listCell" forIndexPath:indexPath];
    
    PFObject *b = [self.platos objectAtIndex:indexPath.row];
    cell.textLabel.text = [b objectForKey:@"nombre_plato"];
    
    // Configure the cell...
    
    return cell;
}

#pragma mark -
#pragma mark New View Delegate Method
- (void)actualizarDatos{
    //llamar a Parse para traer datos
    [Area51Request obtenerListaDePlatos:^(NSArray *platos, BOOL condicion) {
        if (condicion) {
            self.platos = platos;
            [self.tableView reloadData];
        }else{
            
        }
    }];
}
@end
