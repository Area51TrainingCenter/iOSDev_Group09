//
//  TablaController.m
//  TablaConCeldasCustomizadas
//
//  Created by Franti Saúl Huamán Mera on 2/25/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "TablaController.h"

@interface TablaController ()
@property (nonatomic, strong) NSMutableArray *listaDeMenus;

@end

@implementation TablaController

#pragma mark -
#pragma mark LifeCycle Method
- (id)init{
    self = [super init];
    if (self) {
        self.listaDeMenus = [NSMutableArray new];
    }
    return self;
}

#pragma mark -
#pragma mark Service Methods
- (BOOL)guardarRegistro:(Menu *)item{
    if (item !=nil) {
        [self.listaDeMenus addObject:item];
        return YES;
    }else{
        return NO;
    }
}
- (NSMutableArray *)obtenerMenus{
    return self.listaDeMenus;
}

#pragma mark -
#pragma mark Singleton Instance Method
+ (instancetype)sharedInstance{
    static TablaController *we = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        we = [TablaController new];
    });
    return we;
}
@end
