//
//  TablaViewController.h
//  TablaEjercicio
//
//  Created by Franti Saúl Huamán Mera on 2/11/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TablaViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UITextField *cajaUno;
@property (weak, nonatomic) IBOutlet UITextField *cajaDos;
@property (weak, nonatomic) IBOutlet UITextField *caja3;
- (IBAction)cerrar:(id)sender;
- (IBAction)guardar:(id)sender;

@end
