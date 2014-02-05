//
//  DatoPasadoViewController.h
//  PasarDatos
//
//  Created by Franti Saúl Huamán Mera on 2/4/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DatoPasadoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *cadenaConcatenadaAMostrar;
@property (nonatomic, strong) NSString *datoPasado;
@end
