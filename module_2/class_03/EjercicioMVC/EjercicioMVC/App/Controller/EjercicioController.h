//
//  EjercicioController.h
//  EjercicioMVC
//
//  Created by Franti Saúl Huamán Mera on 2/27/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Objeto.h"

@interface EjercicioController : NSObject
+ (instancetype)sharedInstance;
- (BOOL)guardarRegistro:(Objeto *)item;
- (NSMutableArray *)obtenerRegistros;
@end
