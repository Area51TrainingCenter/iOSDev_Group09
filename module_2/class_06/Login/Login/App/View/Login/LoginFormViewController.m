//
//  LoginFormViewController.m
//  Login
//
//  Created by Franti Saúl Huamán Mera on 3/11/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "LoginFormViewController.h"
#import "FormCell.h"

@interface LoginFormViewController ()

@end

@implementation LoginFormViewController

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
    NSLog(self.esRegistro?@"YES":@"NO");
}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark - Table View Data Source Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (self.esRegistro) {
        return 3;
    }else{
        return 2;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    FormCell *c = [tableView dequeueReusableCellWithIdentifier:@"formCell" forIndexPath:indexPath];
    if (indexPath.row==0) {
        c.name.text = @"Email";
        c.value.placeholder = @"example@gmail.com";
    }else if (indexPath.row==1){
        if (self.esRegistro) {
            c.name.text = @"Nombre";
            c.value.placeholder = @"Ingresar";
        }else{
            c.name.text = @"Clave";
            c.value.placeholder = @"Ingresar";
        }
    }else{
        c.name.text = @"Nombre";
        c.value.placeholder = @"Ingresar";
    }
    return c;
}
@end
