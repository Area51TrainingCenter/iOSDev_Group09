//
//  NuevoViewController.h
//  EjercicioMVC
//
//  Created by Franti Saúl Huamán Mera on 2/27/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NuevoViewControllerDelegate <NSObject>
- (void)actualizarTabla;
@end

@interface NuevoViewController : UITableViewController
@property (nonatomic, weak) id<NuevoViewControllerDelegate>delegate;
@property (weak, nonatomic) IBOutlet UITextField *cajaNombre;
@property (weak, nonatomic) IBOutlet UITextField *cajaPrecio;
@property (weak, nonatomic) IBOutlet UITextField *cajaOrigen;
@property (weak, nonatomic) IBOutlet UISwitch *esTuberculo;

@end
