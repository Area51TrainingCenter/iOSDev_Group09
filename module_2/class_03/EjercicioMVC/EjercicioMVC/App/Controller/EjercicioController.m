//
//  EjercicioController.m
//  EjercicioMVC
//
//  Created by Franti Saúl Huamán Mera on 2/27/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "EjercicioController.h"

@interface EjercicioController ()
@property (nonatomic, strong) NSMutableArray *lista;
@end

@implementation EjercicioController

- (id)init{
    self = [super init];
    if (self) {
        self.lista = [NSMutableArray new];
    }
    return self;
}

+ (instancetype)sharedInstance{
    static EjercicioController *y = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        y = [EjercicioController new];
    });
    return y;
}
- (BOOL)guardarRegistro:(Objeto *)item{
    if (item!=nil) {
        [self.lista addObject:item];
        return YES;
    }else{
        return NO;
    }
}
- (NSMutableArray *)obtenerRegistros{
    return self.lista;
}
@end
