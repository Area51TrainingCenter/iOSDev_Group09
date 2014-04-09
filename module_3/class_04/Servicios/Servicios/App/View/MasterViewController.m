//
//  MasterViewController.m
//  Servicios
//
//  Created by Franti Saúl Huamán Mera on 4/1/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "MasterViewController.h"
#import "Area51.h"

@interface MasterViewController ()

@end

@implementation MasterViewController

#pragma mark -
#pragma mark LifeCycle Methods
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

- (IBAction)opcionSeleccionada:(id)sender {
    UIButton *t = (UIButton *)sender;
    NSString *tipo;
    if (t.tag==1) {
        tipo = @"1";
    }else if (t.tag==2){
        tipo = @"2";
    }else{
        tipo = @"3";
    }
    
    NSDictionary *param = [NSDictionary dictionaryWithObjectsAndKeys:@"03", @"idTaller", tipo, @"tipoBusqueda",[tipo integerValue]==1?self.cajaBuscar.text:@"", @"placa", [tipo integerValue]==2?self.cajaBuscar.text:@"", @"vin", [tipo integerValue]==3?self.cajaBuscar.text:@"", @"OT",nil];
    
    [Area51 buscarItems:param bloque:^(NSArray *resultado, NSError *error) {
        UITextField *t;
        
    }];
    
    NSLog(@"%@",param);
    
}
@end
