//
//  LoginController.h
//  Login
//
//  Created by Franti Saúl Huamán Mera on 3/13/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UsuarioBean.h"

@interface LoginController : NSObject
+ (instancetype)sharedInstance;
- (BOOL)guardarUsuario:(UsuarioBean *)usuario;
@end
