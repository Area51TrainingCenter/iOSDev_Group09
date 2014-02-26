//
//  NuevoViewController.m
//  TablaConCeldasCustomizadas
//
//  Created by Franti Saúl Huamán Mera on 2/25/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "NuevoViewController.h"

//custom cells
#import "FormCell.h"

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
#pragma mark - Table View Data Source Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section==0) {
        return 2;
    }else{
        return 1;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    FormCell *cell = [tableView dequeueReusableCellWithIdentifier:@"formCell" forIndexPath:indexPath];
    
    if (indexPath.section==0) {
        if (indexPath.row==0) {
            cell.name.text = @"Nombre";
            cell.value.placeholder = @"Steve Jobs";
            cell.value.returnKeyType = UIReturnKeyNext;
        }else{
            cell.name.text = @"Descripción";
            cell.value.placeholder = @"Ingresar";
            cell.value.returnKeyType = UIReturnKeyNext;
        }
    }else{
        cell.name.text = @"Precio";
        cell.value.placeholder = @"En Soles";
        cell.value.returnKeyType = UIReturnKeyDone;
    }
    return cell;
}

#pragma mark -
#pragma mark  IBAction Methods
- (IBAction)closeButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)saveButton:(id)sender {
    
}
@end
