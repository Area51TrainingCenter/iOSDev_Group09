//
//  PunoRequest.m
//  Puno
//
//  Created by Franti Saúl Huamán Mera on 3/25/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "PunoRequest.h"

@implementation PunoRequest

+ (void)nuevoRestaurante:(RestauranteBean *)item conBloque:(void(^)(BOOL condicion, NSError *error))bloque{
    PFObject *nuevo = [PFObject objectWithClassName:@"Restaurant"];
    [nuevo setValue:item.name forKey:@"restaurant_name"];
    [nuevo setValue:item.address forKey:@"restaurant_address"];
    [nuevo setValue:item.foodStyle forKey:@"restaurant_style"];
    [nuevo setValue:@"" forKey:@"restaurant_foto"];
    [nuevo saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (succeeded) {
            bloque(succeeded, nil);
        }else{
            bloque(succeeded, error);
        }
    }];
}
+ (void)traerListaDeRestaurantes:(void(^)(NSArray *restaurantes, NSError *error))bloque{
    PFQuery *q = [PFQuery queryWithClassName:@"Restaurant"];
    [q findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            bloque(objects, nil);
        }else{
            bloque(nil, error);
        }
    }];
}
@end
