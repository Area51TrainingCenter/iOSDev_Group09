//
//  TweetController.h
//  Tweet
//
//  Created by Franti Saúl Huamán Mera on 3/4/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tweet.h"

@interface TweetController : NSObject
+ (instancetype)sharedInstance;
- (BOOL)guardarNuevoTweet:(Tweet *)item;
- (NSMutableArray *)obtenerTweets;
@end
