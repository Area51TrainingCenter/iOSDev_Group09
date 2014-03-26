//
//  PunoRequest.h
//  Puno
//
//  Created by Franti Saúl Huamán Mera on 3/25/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RestauranteBean.h"

@interface PunoRequest : NSObject
+ (void)nuevoRestaurante:(RestauranteBean *)item conBloque:(void(^)(BOOL condicion, NSError *error))bloque;
+ (void)traerListaDeRestaurantes:(void(^)(NSArray *restaurantes, NSError *error))bloque;
@end
