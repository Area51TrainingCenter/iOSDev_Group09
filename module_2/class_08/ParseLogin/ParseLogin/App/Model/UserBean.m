//
//  UserBean.m
//  ParseLogin
//
//  Created by Franti Saúl Huamán Mera on 3/18/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "UserBean.h"

@implementation UserBean

- (instancetype)init{
    self =[super init];
    if (self) {
        self.name=@"";
        self.email=@"";
        self.sex=@"";
    }
    return self;
}
@end
