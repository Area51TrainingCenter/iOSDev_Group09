//
//  ViewController.m
//  EjercicioPasarDato
//
//  Created by Franti Saúl Huamán Mera on 2/4/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "ViewController.h"
#import "IzquierdaViewController.h"
#import "DerechaViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIColor *colorSeleccionado;
@end

@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"izquierdoSegue"]) {
        IzquierdaViewController *i = segue.destinationViewController;
        i.colorElegido = self.colorSeleccionado;
        i.resultadoCalculo = @"4";
    }else if ([segue.identifier isEqualToString:@"derechoSegue"]){
        DerechaViewController *d = segue.destinationViewController;
        d.colorElegido = self.colorSeleccionado;
        d.resultadoCalculo = @"10";
    }
}

- (IBAction)colorAzul:(id)sender {
    self.colorSeleccionado = [UIColor blueColor];
}
- (IBAction)colorRojo:(id)sender {
    self.colorSeleccionado = [UIColor redColor];
}
- (IBAction)colorVerde:(id)sender {
    self.colorSeleccionado = [UIColor greenColor];
}
@end
