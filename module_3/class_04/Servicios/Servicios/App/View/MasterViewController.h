//
//  MasterViewController.h
//  Servicios
//
//  Created by Franti Saúl Huamán Mera on 4/1/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MasterViewController : UIViewController
- (IBAction)opcionSeleccionada:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *cajaBuscar;

@end
