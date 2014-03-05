//
//  Tweet.m
//  Tweet
//
//  Created by Franti Saúl Huamán Mera on 3/4/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "Tweet.h"

@implementation Tweet

- (instancetype)init{
    self = [super init];
    if (self) {
        self.texto = @"";
        self.fechaDeRegistro = nil;
    }
    return self;
}
@end
