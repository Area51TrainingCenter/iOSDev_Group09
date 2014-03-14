//
//  Usuario.h
//  Login
//
//  Created by Franti Saúl Huamán Mera on 3/13/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface Usuario : NSManagedObject

@property (nonatomic, retain) NSString * clave;
@property (nonatomic, retain) NSString * email;
@property (nonatomic, retain) NSString * nombre;
@property (nonatomic, retain) NSString * edad;

@end
