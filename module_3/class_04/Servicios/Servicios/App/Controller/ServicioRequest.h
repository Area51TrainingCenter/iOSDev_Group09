//
//  ServicioRequest.h
//  Servicios
//
//  Created by Franti Saúl Huamán Mera on 4/1/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "AFHTTPSessionManager.h"

@interface ServicioRequest : AFHTTPSessionManager
+ (instancetype)sharedInstance;
@end
