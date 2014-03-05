//
//  Tweet.h
//  Tweet
//
//  Created by Franti Saúl Huamán Mera on 3/4/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tweet : NSObject
@property (nonatomic, strong) NSString *texto;
@property (nonatomic, strong) NSDate *fechaDeRegistro;
@end
