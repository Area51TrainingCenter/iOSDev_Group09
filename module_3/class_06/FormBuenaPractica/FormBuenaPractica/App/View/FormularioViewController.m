//
//  FormularioViewController.m
//  FormBuenaPractica
//
//  Created by Franti Saúl Huamán Mera on 4/8/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "FormularioViewController.h"
#import "MiPickerViewController.h"
#import "MiToolbarViewController.h"

@interface FormularioViewController ()<MiToolbarViewControllerDelegate, MiPickerViewControllerDelegate, UITextFieldDelegate>
@property (nonatomic, strong) MiToolbarViewController *toolbar;
@end

@implementation FormularioViewController

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

#pragma mark TextField Delegate Methods
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    self.toolbar = [self.storyboard instantiateViewControllerWithIdentifier:@"toolbarScene"];
    self.toolbar.view.frame = CGRectMake(0, 0, 320, 44);
    self.toolbar.delegate=self;
    [textField setInputAccessoryView:self.toolbar.view];
    return YES;
}

#pragma mark -
#pragma mark MiToolbar View Delegate Methods
- (void)pasarhaciaatras{
    if (self.txtDistrito.isFirstResponder) {
        [self.txtProvincia becomeFirstResponder];
    }else if (self.txtProvincia.isFirstResponder){
        [self.txtDepartamento becomeFirstResponder];
    }
    NSLog(@"Ir atras");
}
- (void)pasarhaciaadelante{
    if (self.txtDepartamento.isFirstResponder) {
        [self.txtProvincia becomeFirstResponder];
    }else if (self.txtProvincia.isFirstResponder){
        [self.txtDistrito becomeFirstResponder];
    }
    NSLog(@"Ir adelante");
}
- (void)pasarcerrar{
    if (self.txtDepartamento.isFirstResponder) {
        [self.txtDepartamento resignFirstResponder];
    }else if (self.txtProvincia.isFirstResponder){
        [self.txtProvincia resignFirstResponder];
    }else{
        [self.txtDistrito resignFirstResponder];
    }
    NSLog(@"Cerrar");
}

#pragma mark -
#pragma mark MiPicker View Delegate Methods
- (void)pasarElementoSeleccionado:(NSDictionary *)item{
    
}
@end
