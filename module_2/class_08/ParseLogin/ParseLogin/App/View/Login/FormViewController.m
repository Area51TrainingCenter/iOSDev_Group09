//
//  FormViewController.m
//  ParseLogin
//
//  Created by Franti Saúl Huamán Mera on 3/18/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "FormViewController.h"
#import "UserBean.h"

//custom cells
#import "LoginFormCell.h"

@interface FormViewController ()<UITextFieldDelegate>
@property (nonatomic, strong) UITextField *currentName;
@property (nonatomic, strong) UITextField *currentEmail;
@property (nonatomic, strong) UITextField *currentSex;
@property (nonatomic, strong) UITextField *currentPassword;
@end

@implementation FormViewController

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
    NSLog(@"Tipo: %i",self.tipo);
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
        if (self.tipo==0) {
            return 4;
        }else{
            return 2;
        }
    }else{
        return 1;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (self.tipo==0) {
        if (indexPath.section==0) {
            LoginFormCell *cell = [tableView dequeueReusableCellWithIdentifier:@"loginCell" forIndexPath:indexPath];
            if (indexPath.row==0) {
                cell.name.text = @"Nombre";
                cell.value.placeholder = @"Ingresar";
                cell.value.delegate=self;
                self.currentName = cell.value;
            }else if (indexPath.row==1){
                cell.name.text = @"Email";
                cell.value.placeholder = @"Ingresar";
                cell.value.delegate=self;
                self.currentEmail = cell.value;
            }else if (indexPath.row==2){
                cell.name.text = @"Sexo";
                cell.value.placeholder = @"Ingresar";
                cell.value.delegate=self;
                self.currentSex = cell.value;
            }else{
                cell.name.text = @"Clave";
                cell.value.placeholder = @"Ingresar";
                cell.value.delegate=self;
                self.currentPassword = cell.value;
            }
            return cell;
        }else{
            UITableViewCell *b = [tableView dequeueReusableCellWithIdentifier:@"buttonCell" forIndexPath:indexPath];
            return b;
        }
    }else{
        if (indexPath.section==0) {
            LoginFormCell *cell = [tableView dequeueReusableCellWithIdentifier:@"loginCell" forIndexPath:indexPath];
            if (indexPath.row==0) {
                cell.name.text = @"Email";
                cell.value.placeholder = @"Ingresar";
                cell.value.delegate=self;
                self.currentEmail = cell.value;
            }else{
                cell.name.text = @"Clave";
                cell.value.placeholder = @"Ingresar";
                cell.value.delegate=self;
                self.currentPassword = cell.value;
            }
            return cell;
        }else{
            UITableViewCell *b = [tableView dequeueReusableCellWithIdentifier:@"buttonCell" forIndexPath:indexPath];
            return b;
        }
    }
}

#pragma mark -
#pragma mark Table View Delegate Methods
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (self.tipo==0) {
        [self registrarNuevoUsuario];
    }else{
        [self ingresarConUsuario];
    }
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)registrarNuevoUsuario{
    UserBean *n = [UserBean new];
    n.name = self.currentName.text;
    n.email = self.currentEmail.text;
    n.sex = self.currentSex.text;
}
- (void)ingresarConUsuario{
    UserBean *u = [UserBean new];
    u.email = self.currentEmail.text;
}
@end
