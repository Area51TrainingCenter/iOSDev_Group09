//
//  UsuarioBean.m
//  Login
//
//  Created by Franti Saúl Huamán Mera on 3/13/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "UsuarioBean.h"

@implementation UsuarioBean

- (instancetype)init{
    self = [super init];
    if (self) {
        self.nombre= @"";
        self.email= @"";
    }
    return self;
}
- (instancetype)initWithName:(NSString *)nombre email:(NSString *)email{
    self = [super init];
    if (self) {
        self.nombre = nombre;
        self.email = email;
    }
    return self;
}
@end
