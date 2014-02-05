//
//  HijoViewController.h
//  EjercicioPD
//
//  Created by Franti Saúl Huamán Mera on 2/4/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>
//Paso 1
@protocol MiProtocolo <NSObject>
- (void)pasarColorAlPapa:(UIColor *)color;
@end

@interface HijoViewController : UIViewController
- (IBAction)colorRojo:(id)sender;
- (IBAction)colorAzul:(id)sender;
- (IBAction)colorVerde:(id)sender;
- (IBAction)colorNegro:(id)sender;
//Paso 2
@property (nonatomic, strong) id<MiProtocolo>midelegado;

@end
