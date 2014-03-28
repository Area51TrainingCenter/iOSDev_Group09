//
//  FBAreaRequest.m
//  FacebookApp
//
//  Created by Franti Saúl Huamán Mera on 3/27/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "FBAreaRequest.h"

@implementation FBAreaRequest

+ (void)ingresarAFacebook:(void(^)(BOOL condicion, NSError *error))bloque{
    [FBSession openActiveSessionWithReadPermissions:[NSArray arrayWithObjects:@"basic_info", nil] allowLoginUI:YES completionHandler:^(FBSession *session, FBSessionState status, NSError *error) {
        if (!error) {
            if (status == FBSessionStateOpen) {
                bloque(YES, nil);
            }
        }
    }];
}
@end
