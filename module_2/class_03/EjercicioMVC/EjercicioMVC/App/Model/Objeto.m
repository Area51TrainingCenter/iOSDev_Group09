//
//  Objeto.m
//  EjercicioMVC
//
//  Created by Franti Saúl Huamán Mera on 2/27/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "Objeto.h"

@implementation Objeto

- (id)init{
    self = [super init];
    if (self) {
        self.nombre = @"";
        self.precio = @"";
        self.origen = @"";
        self.tipo = 0;
    }
    return self;
}
@end
