//
//  TablaViewController.h
//  TablaEjercicio
//
//  Created by Franti Saúl Huamán Mera on 2/11/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>
//Paso 1
@protocol TablaViewControllerDelegate <NSObject>
-(void)pasardato:(NSString *)dato;
@end


@interface TablaViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UITextField *cajaUno;
@property (weak, nonatomic) IBOutlet UITextField *cajaDos;
@property (weak, nonatomic) IBOutlet UITextField *caja3;
- (IBAction)cerrar:(id)sender;
- (IBAction)guardar:(id)sender;
//Paso 2
@property (nonatomic, weak) id<TablaViewControllerDelegate>delegate;

@end
