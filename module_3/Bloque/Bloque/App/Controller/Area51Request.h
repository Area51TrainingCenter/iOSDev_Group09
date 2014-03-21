//
//  Area51Request.h
//  Bloque
//
//  Created by Franti Saúl Huamán Mera on 3/20/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Area51Request : NSObject
+ (void)ingresarNombre:(NSString *)nombre password:(NSString *)password email:(NSString *)email conBloque:(void(^)(BOOL exito, NSString *mensaje))bloque;
+ (void)crearArregloCondatos:(void(^)(NSArray *miArreglo))bloque;

@end
