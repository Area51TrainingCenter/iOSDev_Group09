//
//  FormularioViewController.h
//  FormBuenaPractica
//
//  Created by Franti Saúl Huamán Mera on 4/8/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FormularioViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UITextField *txtDepartamento;
@property (weak, nonatomic) IBOutlet UITextField *txtProvincia;
@property (weak, nonatomic) IBOutlet UITextField *txtDistrito;

@end
