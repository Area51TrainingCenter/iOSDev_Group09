//
//  ViewController.h
//  TablaEjercicio
//
//  Created by Franti Saúl Huamán Mera on 2/11/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>
//Paso 4
#import "TablaViewController.h"

@interface ViewController : UIViewController<TablaViewControllerDelegate> //Paso 5
@property (weak, nonatomic) IBOutlet UILabel *mostrarLabel;

@end
