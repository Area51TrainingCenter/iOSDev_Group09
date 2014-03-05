//
//  TweetController.m
//  Tweet
//
//  Created by Franti Saúl Huamán Mera on 3/4/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "TweetController.h"

@interface TweetController ()
@property (nonatomic, strong) NSMutableArray *listaGuardada;
@end

@implementation TweetController

- (instancetype)init{
    self = [super init];
    if (self) {
        self.listaGuardada = [NSMutableArray array];
    }
    return self;
}
- (BOOL)guardarNuevoTweet:(Tweet *)item{
    [self.listaGuardada addObject:item];
    return YES;
}
- (NSMutableArray *)obtenerTweets{
    return self.listaGuardada;
}

+ (instancetype)sharedInstance{
    static TweetController *t = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        t = [TweetController new];
    });
    return t;
}

@end
