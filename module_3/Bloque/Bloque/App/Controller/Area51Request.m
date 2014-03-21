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
@end
