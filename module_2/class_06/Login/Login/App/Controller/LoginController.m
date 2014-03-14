//
//  LoginController.m
//  Login
//
//  Created by Franti Saúl Huamán Mera on 3/13/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "LoginController.h"
#import "AppDelegate.h"
#import "Usuario.h"

@interface LoginController ()
@property (nonatomic, strong) NSManagedObjectContext *context;
@property (nonatomic, strong) AppDelegate *miAppDelegate;
@end

@implementation LoginController

- (instancetype)init{
    self = [super init];
    if (self) {
        self.miAppDelegate = [UIApplication sharedApplication].delegate;
        self.context =[self.miAppDelegate managedObjectContext];
    }
    return self;
}

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
    
    Usuario *current = [NSEntityDescription insertNewObjectForEntityForName:@"Usuario" inManagedObjectContext:self.context];
    current.nombre = usuario.nombre;
    current.email = usuario.email;
    
    NSError *error;
    return [self.context save:&error];
}
- (id)obtenerUsuario{
    NSFetchRequest *fetchRequest = [NSFetchRequest new];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Usuario" inManagedObjectContext:self.context];
    [fetchRequest setEntity:entity];
    NSError *er;
    if ([[self.context executeFetchRequest:fetchRequest error:&er] count]!=0) {
        return [[self.context executeFetchRequest:fetchRequest error:&er] objectAtIndex:0];
    }else{
        return nil;
    }
}
- (BOOL)eliminarUsuario{
    [self.context deleteObject:[self obtenerUsuario]];
    NSError *error;
    return [self.context save:&error];
}
@end
