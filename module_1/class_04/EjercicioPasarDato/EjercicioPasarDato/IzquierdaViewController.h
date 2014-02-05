//
//  IzquierdaViewController.h
//  EjercicioPasarDato
//
//  Created by Franti Saúl Huamán Mera on 2/4/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IzquierdaViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *resultado;
@property (nonatomic, strong) NSString *resultadoCalculo;
@property (nonatomic, strong) UIColor *colorElegido;
@end
