//
//  MiToolbarViewController.h
//  FormBuenaPractica
//
//  Created by Franti Saúl Huamán Mera on 4/8/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MiToolbarViewControllerDelegate <NSObject>
- (void)pasarhaciaatras;
- (void)pasarhaciaadelante;
- (void)pasarcerrar;
@end

@interface MiToolbarViewController : UIViewController
@property (nonatomic, weak) id<MiToolbarViewControllerDelegate> delegate;
- (IBAction)adelanteButton:(id)sender;
- (IBAction)atrasButton:(id)sender;
- (IBAction)cerrarButton:(id)sender;

@end
