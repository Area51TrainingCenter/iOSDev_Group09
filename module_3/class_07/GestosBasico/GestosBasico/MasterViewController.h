//
//  MasterViewController.h
//  GestosBasico
//
//  Created by Franti Saúl Huamán Mera on 4/10/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MasterViewController : UIViewController
- (IBAction)manejarTap:(UITapGestureRecognizer *)sender;
- (IBAction)manejarSwipe:(UISwipeGestureRecognizer *)sender;
- (IBAction)manejarPan:(UIPanGestureRecognizer *)sender;
- (IBAction)manejarRotacion:(UIRotationGestureRecognizer *)sender;
@end
