//
//  ViewController.h
//  EjercicioPasarDato
//
//  Created by Franti Saúl Huamán Mera on 2/4/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *cajaUno;
@property (weak, nonatomic) IBOutlet UITextField *cajaDos;
- (IBAction)colorAzul:(id)sender;
- (IBAction)colorRojo:(id)sender;
- (IBAction)colorVerde:(id)sender;

@end
