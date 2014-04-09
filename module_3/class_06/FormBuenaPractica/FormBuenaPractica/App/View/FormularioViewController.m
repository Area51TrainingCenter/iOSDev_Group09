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
    [textField setInputAccessoryView:self.toolbar.view];
    return YES;
}

#pragma mark -
#pragma mark MiToolbar View Delegate Methods
- (void)pasarhaciaatras{
    NSLog(@"Ir atras");
}
- (void)pasarhaciaadelante{
    NSLog(@"Ir adelante");
}
- (void)pasarcerrar{
    NSLog(@"Cerrar");
}

#pragma mark -
#pragma mark MiPicker View Delegate Methods
- (void)pasarElementoSeleccionado:(NSDictionary *)item{
    
}
@end
