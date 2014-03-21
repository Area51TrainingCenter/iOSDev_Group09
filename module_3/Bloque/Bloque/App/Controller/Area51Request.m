//
//  Area51Request.m
//  Bloque
//
//  Created by Franti Saúl Huamán Mera on 3/20/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "Area51Request.h"

@implementation Area51Request

+ (void)ingresarNombre:(NSString *)nombre password:(NSString *)password email:(NSString *)email conBloque:(void(^)(BOOL exito, NSString *mensaje))bloque{
    bloque(YES, @"Se logeo con exito");
}
+ (void)crearArregloCondatos:(void(^)(NSArray *miArreglo))bloque{
    NSMutableArray *datos = [NSMutableArray array];
    for (int i=0; i<6; i++) {
        [datos addObject:[NSString stringWithFormat:@"Area %i",i]];
    }
    bloque(datos);
}
+ (void)bloqueUno:(void(^)(NSArray *miArray, NSString *miString))bloqueuno bloqueDos:(void(^)(NSError *error, NSString *miString))bloqueDos{
    
    BOOL bloque1=NO;
    if (bloque1) {
        bloqueuno([NSArray arrayWithObject:@"dato"],@"bloque 1");
    }else{
        bloqueDos(nil, @"bloque 2");
    }
}
+ (void)crearNuevoRegistro:(NSString *)nombre precio:(NSString *)precio conBloque:(void(^)(BOOL condicion, NSString *message))bloque{
    
    PFObject *menu = [PFObject objectWithClassName:@"Menu"];
    [menu setValue:nombre forKey:@"nombre_plato"];
    [menu setValue:precio forKey:@"precio_plato"];
    
    [menu saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        bloque(succeeded, error.localizedDescription);
    }];
}
+ (void)obtenerListaDePlatos:(void(^)(NSArray *platos, BOOL condicion))bloque{
    
}
@end
