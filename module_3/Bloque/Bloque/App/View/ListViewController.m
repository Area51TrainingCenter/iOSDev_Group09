//
//  ListViewController.m
//  Bloque
//
//  Created by Franti Saúl Huamán Mera on 3/20/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "ListViewController.h"
#import "Area51Request.h"

@interface ListViewController ()

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
    }];*/
    
    [Area51Request bloqueUno:^(NSArray *miArray, NSString *miString) {
        NSLog(@"%@",miArray);
    } bloqueDos:^(NSError *error, NSString *miString) {
        NSLog(@"%@",miString);
    }];
}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark - Table View Data Source Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 0;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"listCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
@end
