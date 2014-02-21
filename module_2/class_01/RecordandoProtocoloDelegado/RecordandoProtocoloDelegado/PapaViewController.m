//
//  PapaViewController.m
//  RecordandoProtocoloDelegado
//
//  Created by Franti Saúl Huamán Mera on 2/20/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "PapaViewController.h"

@interface PapaViewController ()
@property (nonatomic, strong) NSMutableArray *lista;
@end

@implementation PapaViewController

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
    self.lista = [NSMutableArray array];
}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    HijoViewController *e = segue.destinationViewController;
    //Paso 7
    e.delegadoDeArea51 = self;
}

#pragma mark -
#pragma mark - Table View Data Source Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return [self.lista count];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"testCell" forIndexPath:indexPath];
    NSDictionary *bean = [self.lista objectAtIndex:indexPath.section];
    cell.textLabel.text = [bean objectForKey:@"nombre"];
    
    // Configure the cell...
    
    return cell;
}

//Paso 6
#pragma mark -
#pragma mark Area51 Delegate Method
- (void)pasarRegistro:(NSDictionary *)registro{
    [self.lista addObject:registro];
    [self.tableView reloadData];
}
@end
