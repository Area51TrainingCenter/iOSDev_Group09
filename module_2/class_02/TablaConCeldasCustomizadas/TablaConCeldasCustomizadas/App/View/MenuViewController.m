//
//  MenuViewController.m
//  TablaConCeldasCustomizadas
//
//  Created by Franti Saúl Huamán Mera on 2/25/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "MenuViewController.h"
#import "TablaController.h"
#import "Menu.h"
#import "NuevoViewController.h"

@interface MenuViewController ()<NuevoViewControllerDelegate>
@property (nonatomic, strong) NSArray *lista;
@end

@implementation MenuViewController

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
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    UINavigationController *nav = segue.destinationViewController;
    NuevoViewController *t = (NuevoViewController *)nav.topViewController;
    t.delegate=self;
}

#pragma mark -
#pragma mark - Table View Data Source Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.lista count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"menuCell" forIndexPath:indexPath];
    Menu *bean = (Menu *)[self.lista objectAtIndex:indexPath.row];
    cell.textLabel.text = bean.name;
    cell.detailTextLabel.text = bean.price;
    return cell;
}

#pragma mark -
#pragma mark Nuevo Delegate Method
- (void)recargarLista{
    self.lista = [[TablaController sharedInstance] obtenerMenus];
    [self.tableView reloadData];
}
@end
