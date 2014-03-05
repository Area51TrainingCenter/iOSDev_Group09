//
//  DetalleViewController.h
//  Tweet
//
//  Created by Franti Saúl Huamán Mera on 3/4/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tweet.h"

@interface DetalleViewController : UIViewController
@property (nonatomic, strong) Tweet *miObjetoAmostrar;
@property (weak, nonatomic) IBOutlet UILabel *miLabel;
@end
