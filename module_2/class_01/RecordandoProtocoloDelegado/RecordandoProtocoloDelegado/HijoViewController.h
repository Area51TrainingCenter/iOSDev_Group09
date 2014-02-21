//
//  HijoViewController.h
//  RecordandoProtocoloDelegado
//
//  Created by Franti Saúl Huamán Mera on 2/20/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>

//Paso 1
@protocol Area51Delegate <NSObject>
- (void)pasarRegistro:(NSDictionary *)registro;
@end


@interface HijoViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UITextField *caja_nombre;
@property (weak, nonatomic) IBOutlet UITextField *caja_precio;
//Paso 2
@property (nonatomic, weak) id<Area51Delegate>delegadoDeArea51;
@end
