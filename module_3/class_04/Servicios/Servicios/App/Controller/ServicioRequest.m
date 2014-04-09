//
//  ServicioRequest.m
//  Servicios
//
//  Created by Franti Saúl Huamán Mera on 4/1/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "ServicioRequest.h"
#import "AppURL.h"

@implementation ServicioRequest

#pragma mark -
#pragma mark Singleton Instance Method
+ (instancetype)sharedInstance{
    static ServicioRequest *t = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        t= [[ServicioRequest alloc] initWithBaseURL:[AppURL server]];
    });
    return t;
}
- (instancetype)initWithBaseURL:(NSURL *)url{
    self = [super initWithBaseURL:url];
    self.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/html", nil];
    return self;
    
}
@end
