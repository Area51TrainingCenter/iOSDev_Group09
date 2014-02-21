//
//  HijoViewController.m
//  RecordandoProtocoloDelegado
//
//  Created by Franti Saúl Huamán Mera on 2/20/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "HijoViewController.h"

@interface HijoViewController ()

@end

@implementation HijoViewController

#pragma mark -
#pragma mark LifeCycle Methods
- (id)initWithStyle:(UITableViewStyle)style{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)viewDidLoad{
    [super viewDidLoad];
    /*
    self.caja_nombre.text;
    self.caja_precio.text;*/
    
    
}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section==1 && indexPath.row==0) {
        NSDictionary *r = [NSDictionary dictionaryWithObjectsAndKeys:self.caja_nombre.text, @"nombre", self.caja_precio.text, @"precio", nil];
        //Paso 3
        [self.delegadoDeArea51 pasarRegistro:r];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}
@end
