//
//  TablaController.h
//  TablaConCeldasCustomizadas
//
//  Created by Franti Saúl Huamán Mera on 2/25/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Menu.h"

@interface TablaController : NSObject
- (BOOL)guardarRegistro:(Menu *)item;
+ (instancetype)sharedInstance;
- (NSMutableArray *)obtenerMenus;
@end
