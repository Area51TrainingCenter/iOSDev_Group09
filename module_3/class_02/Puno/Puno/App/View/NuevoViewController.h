//
//  NuevoViewController.h
//  Puno
//
//  Created by Franti Saúl Huamán Mera on 3/25/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NuevoViewControllerDelegate <NSObject>
- (void)actulizarData;
@end

@interface NuevoViewController : UITableViewController
- (IBAction)cerrarButton:(id)sender;
- (IBAction)guardarButton:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *cajaNombre;
@property (weak, nonatomic) IBOutlet UITextField *cajaDirección;
@property (weak, nonatomic) IBOutlet UITextField *cajaTipoComida;
@property (nonatomic, weak) id<NuevoViewControllerDelegate> delegate;

@end
