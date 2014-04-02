//
//  Area51.h
//  Servicios
//
//  Created by Franti Saúl Huamán Mera on 4/1/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Area51 : NSObject
+ (void)buscarItems:(NSDictionary *)params bloque:(void(^)(NSArray *resultado, NSError *error))bloque;
@end
