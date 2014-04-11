//
//  MasterViewController.m
//  GestosBasico
//
//  Created by Franti Saúl Huamán Mera on 4/10/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "MasterViewController.h"

@interface MasterViewController ()

@end

@implementation MasterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)viewDidLoad{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)manejarTap:(UITapGestureRecognizer *)sender{
    /*
    [[[UIAlertView alloc] initWithTitle:@"Tap" message:@"Presionado" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil, nil] show];*/
    NSLog(@"Presiono la manzana!");
}
- (IBAction)manejarSwipe:(UISwipeGestureRecognizer *)sender{
    NSLog(@"Swipe gesture");
}
- (IBAction)manejarPan:(UIPanGestureRecognizer *)sender{
    NSLog(@"PAN");
    CGPoint translation = [sender translationInView:self.view];
    sender.view.center = CGPointMake(sender.view.center.x + translation.x,
                                         sender.view.center.y + translation.y);
    [sender setTranslation:CGPointMake(0, 0) inView:self.view];
}
- (IBAction)manejarRotacion:(UIRotationGestureRecognizer *)sender{
    sender.view.transform = CGAffineTransformRotate(sender.view.transform, sender.rotation);
    sender.rotation = 0;
    NSLog(@"Rotación");
}
@end
