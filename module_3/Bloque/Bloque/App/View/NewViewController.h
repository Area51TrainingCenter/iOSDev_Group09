//
//  NewViewController.h
//  Bloque
//
//  Created by Franti Saúl Huamán Mera on 3/20/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UITextField *nombre;
@property (weak, nonatomic) IBOutlet UITextField *precio;
- (IBAction)cerrarBoton:(id)sender;

@end
