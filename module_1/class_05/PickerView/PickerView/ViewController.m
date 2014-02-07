//
//  ViewController.m
//  PickerView
//
//  Created by Franti Saúl Huamán Mera on 2/6/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *miarreglo;
@end

@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@""]];
    
	// Do any additional setup after loading the view, typically from a nib.
    /*
    NSMutableDictionary *primerDiccionario = [[NSMutableDictionary alloc] init];
    [primerDiccionario setValue:@"Fresa" forKey:@"Nombre"];
    [primerDiccionario setValue:@"12" forKey:@"Precio"];
    NSLog(@"%@",primerDiccionario);
    
    NSMutableDictionary *segundoDiccionario = [[NSMutableDictionary alloc] init];
    [segundoDiccionario setValue:@"Manzana" forKey:@"Nombre"];
    [segundoDiccionario setValue:@"5" forKey:@"Precio"];
    NSLog(@"%@",segundoDiccionario);*/
    
    NSDictionary *d1 = [NSDictionary dictionaryWithObjectsAndKeys:@"Fresa", @"Nombre", @"12", @"Precio", nil];
    
    NSDictionary *d2 = [NSDictionary dictionaryWithObjectsAndKeys:@"Manzana", @"Nombre", @"5", @"Precio", nil];
    //NSLog(@"%@ %@",d1, d2);
    
    self.miarreglo = [NSArray arrayWithObjects:d1, d2, nil];
    
    NSLog(@"%@",[NSArray arrayWithObjects:d1, d2, nil]);
    
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark PickerView Data Source Methods
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [self.miarreglo count];
}
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

#pragma mark -
#pragma mark PickerView Delegate Methods
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    NSDictionary *item = [self.miarreglo objectAtIndex:row];
    return [item objectForKey:@"Nombre"];
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    self.miCaja.text = [[self.miarreglo objectAtIndex:row] objectForKey:@"Nombre"];
}

@end
