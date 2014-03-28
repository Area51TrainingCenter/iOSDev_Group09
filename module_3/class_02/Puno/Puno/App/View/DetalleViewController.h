//
//  DetalleViewController.h
//  Puno
//
//  Created by Franti Saúl Huamán Mera on 3/25/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>
#import <Accounts/Accounts.h>

@interface DetalleViewController : UIViewController
@property (nonatomic, strong) PFObject *de;
@property (weak, nonatomic) IBOutlet UIImageView *imagenAMostrar;
@end
