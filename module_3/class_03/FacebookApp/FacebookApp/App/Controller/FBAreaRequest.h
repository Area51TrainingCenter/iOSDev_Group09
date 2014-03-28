//
//  FBAreaRequest.h
//  FacebookApp
//
//  Created by Franti Saúl Huamán Mera on 3/27/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FBAreaRequest : NSObject
+ (void)ingresarAFacebook:(void(^)(BOOL condicion, NSError *error))bloque;
@end
