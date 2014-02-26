//
//  Menu.m
//  TablaConCeldasCustomizadas
//
//  Created by Franti Saúl Huamán Mera on 2/25/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "Menu.h"

@implementation Menu

- (id)init{
    self = [super init];
    if (self) {
        self.name = @"";
        self.des = @"";
        self.price = @"";
    }
    return self;
}

@end
