//
//  AppURL.m
//  Servicios
//
//  Created by Franti Saúl Huamán Mera on 4/1/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "AppURL.h"

static const NSString *kServerURL = @"http://23.23.181.216";
static const NSString *kBuscarURL = @"/Talleres/Ipad/ConsultaOTIpad.aspx";

@implementation AppURL
+ (NSURL *)server{
    NSString *url =[NSString stringWithFormat:@"%@",kServerURL];
    return [NSURL URLWithString:url];
}
+ (NSString *)buscarOT{
    return [NSString stringWithFormat:@"%@",kBuscarURL];
}
@end
