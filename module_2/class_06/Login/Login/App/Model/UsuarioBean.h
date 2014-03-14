//
//  UsuarioBean.h
//  Login
//
//  Created by Franti Saúl Huamán Mera on 3/13/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UsuarioBean : NSObject
@property (nonatomic, strong) NSString *nombre;
@property (nonatomic, strong) NSString *email;
- (instancetype)initWithName:(NSString *)nombre email:(NSString *)email;
@end
