//
//  Area51.m
//  Servicios
//
//  Created by Franti Saúl Huamán Mera on 4/1/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "Area51.h"
#import "ServicioRequest.h"
#import "AppURL.h"

@implementation Area51

+ (void)buscarItems:(NSDictionary *)params bloque:(void(^)(NSArray *resultado, NSError *error))bloque{
    
    [[ServicioRequest sharedInstance] POST:[AppURL buscarOT] parameters:params success:^(NSURLSessionDataTask *task, id responseObject) {
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        
    }];
}
@end
