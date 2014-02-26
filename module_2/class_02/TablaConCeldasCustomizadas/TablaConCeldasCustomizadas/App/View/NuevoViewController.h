//
//  NuevoViewController.h
//  TablaConCeldasCustomizadas
//
//  Created by Franti Saúl Huamán Mera on 2/25/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NuevoViewControllerDelegate <NSObject>
- (void)recargarLista;
@end

@interface NuevoViewController : UITableViewController
- (IBAction)closeButton:(id)sender;
- (IBAction)saveButton:(id)sender;
@property (nonatomic, weak) id<NuevoViewControllerDelegate>delegate;
@end
