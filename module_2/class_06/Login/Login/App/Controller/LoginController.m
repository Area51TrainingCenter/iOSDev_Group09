//
//  LoginController.m
//  Login
//
//  Created by Franti Saúl Huamán Mera on 3/13/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "LoginController.h"

@implementation LoginController


+ (instancetype)sharedInstance{
    static LoginController *t = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        t = [LoginController new];
    });
    return t;
}
- (BOOL)guardarUsuario:(UsuarioBean *)usuario{
    NSLog(@"Nombre: %@",usuario.nombre);
    NSLog(@"Email: %@",usuario.email);
    
    return NO;
}
@end
