//
//  NuevoViewController.m
//  TablaConCeldasCustomizadas
//
//  Created by Franti Saúl Huamán Mera on 2/25/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "NuevoViewController.h"
#import "Menu.h"
#import "TablaController.h"

//custom cells
#import "FormCell.h"

@interface NuevoViewController ()<UITextFieldDelegate>
@property (nonatomic, strong) UITextField *currentName;
@property (nonatomic, strong) UITextField *currentDescription;
@property (nonatomic, strong) UITextField *currentPrice;
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
            cell.value.delegate = self;
            self.currentName = cell.value;
        }else{
            cell.name.text = @"Descripción";
            cell.value.placeholder = @"Ingresar";
            cell.value.returnKeyType = UIReturnKeyNext;
            cell.value.delegate = self;
            self.currentDescription = cell.value;
        }
    }else{
        cell.name.text = @"Precio";
        cell.value.placeholder = @"En Soles";
        cell.value.returnKeyType = UIReturnKeyDone;
        cell.value.keyboardType = UIKeyboardTypeNumberPad;
        cell.value.delegate=self;
        self.currentPrice = cell.value;
    }
    return cell;
}

#pragma mark -
#pragma mark IBAction Methods
- (IBAction)closeButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)saveButton:(id)sender {
    
    if ([self.currentName.text length]!=0 && [self.currentDescription.text length]!=0 && [self.currentPrice.text length]!=0) {
        
        Menu *m = [[Menu alloc] init];
        m.name = self.currentName.text;
        m.des = self.currentDescription.text;
        m.price = self.currentPrice.text;
        
        if ([[TablaController sharedInstance] guardarRegistro:m]) {
            [self dismissViewControllerAnimated:YES completion:^{
                [self.delegate recargarLista];
            }];
        }else{
            [[[UIAlertView alloc] initWithTitle:@"ERROR " message:@"No se pudo guardar el registro" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil, nil] show];
        }
    }else{
        [[[UIAlertView alloc] initWithTitle:@"Alerta" message:@"Formulario incompleto" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil, nil] show];
    }
}

#pragma mark -
#pragma mark TextField Delegate Methods
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if (textField == self.currentName) {
        [self.currentDescription becomeFirstResponder];
    }else if (textField == self.currentDescription){
        [self.currentPrice becomeFirstResponder];
    }else{
        [self.currentPrice resignFirstResponder];
    }
    return YES;
}
@end
