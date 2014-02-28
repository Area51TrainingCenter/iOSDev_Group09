//
//  ListaViewController.m
//  EjercicioMVC
//
//  Created by Franti Saúl Huamán Mera on 2/27/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "ListaViewController.h"
#import "EjercicioController.h"

@interface ListaViewController ()
@property (nonatomic, strong) NSMutableArray *frutas;
@property (nonatomic, strong) NSMutableArray *tuberculos;
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
    self.frutas = [NSMutableArray new];
    self.tuberculos = [NSMutableArray new];
    
    NSArray *miLista =[[EjercicioController sharedInstance] obtenerRegistros];
    
    for (Objeto *bean in miLista) {
        if (bean.tipo==0) {
            [self.frutas addObject:bean];
        }else{
            [self.tuberculos addObject:bean];
        }
    }
}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark - Table View Data Source Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section==0) {
        return [self.frutas count];
        //pinto el número de frutas
    }else{
        return [self.tuberculos count];
        //pinto el número de tuberculos
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"testeCell" forIndexPath:indexPath];
    
    if (indexPath.section==0) {
        Objeto *current = [self.frutas objectAtIndex:indexPath.row];
        cell.textLabel.text = current.nombre;
    }else{
        Objeto *current = [self.tuberculos objectAtIndex:indexPath.row];
        cell.textLabel.text = current.nombre;
    }
    return cell;
}
@end
