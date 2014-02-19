//
//  FrutasViewController.m
//  CeldaCustomizada
//
//  Created by Franti Saúl Huamán Mera on 2/18/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "FrutasViewController.h"
#import "MiCeldaCell.h"

@interface FrutasViewController ()
@property (nonatomic, strong) NSArray *listaDefrutas;
@end

@implementation FrutasViewController

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
    [self creandoLaData];
}
- (void)creandoLaData{
    NSDictionary *uno = [NSDictionary dictionaryWithObjectsAndKeys:@"Manzana", @"Nombre", @"12", @"Precio", nil];
    NSDictionary *dos = [NSDictionary dictionaryWithObjectsAndKeys:@"Fresa", @"Nombre", @"10", @"Precio", nil];
    NSDictionary *tres = [NSDictionary dictionaryWithObjectsAndKeys:@"Maracuya", @"Nombre", @"8", @"Precio", nil];
    NSDictionary *cuatro = [NSDictionary dictionaryWithObjectsAndKeys:@"Uva", @"Nombre", @"15", @"Precio", nil];
    NSDictionary *cinco = [NSDictionary dictionaryWithObjectsAndKeys:@"Naranja", @"Nombre", @"6", @"Precio", nil];
    NSDictionary *seis = [NSDictionary dictionaryWithObjectsAndKeys:@"Mango", @"Nombre", @"16", @"Precio", nil];
    NSDictionary *siete = [NSDictionary dictionaryWithObjectsAndKeys:@"Mandarina", @"Nombre", @"3", @"Precio", nil];
    NSDictionary *ocho = [NSDictionary dictionaryWithObjectsAndKeys:@"Pera", @"Nombre", @"4", @"Precio", nil];
    
    self.listaDefrutas = [NSArray arrayWithObjects:uno, dos, tres, cuatro, cinco, seis, siete, ocho, nil];
}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark - Table View Data Source Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
    //return [self.listaDefrutas count];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.listaDefrutas count];
    //return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    MiCeldaCell *cell = [tableView dequeueReusableCellWithIdentifier:@"frutaCell" forIndexPath:indexPath];
    NSDictionary *bean = [self.listaDefrutas objectAtIndex:indexPath.row];
    
    cell.nombreDefruta.text = [bean objectForKey:@"Nombre"];
    cell.precioDefruta.text = [bean objectForKey:@"Precio"];
    
    if ([[bean objectForKey:@"Precio"] integerValue]>10) {
        [cell.esCaro setOn:YES];
    }else{
        [cell.esCaro setOn:NO];
    }
    
    
    // Configure the cell...
    
    return cell;
}

#pragma mark -
#pragma mark Table View Delegate Methods
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70;
}

@end
