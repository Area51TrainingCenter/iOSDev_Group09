//
//  NuevoViewController.h
//  Tweet
//
//  Created by Franti Saúl Huamán Mera on 3/4/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol NuevoViewControllerDelegate<NSObject>
- (void)actualizarTabla;
@end

@interface NuevoViewController : UITableViewController
@property (nonatomic, weak) id<NuevoViewControllerDelegate>delegate;
- (IBAction)cerrar:(id)sender;
- (IBAction)guardar:(id)sender;
@end
