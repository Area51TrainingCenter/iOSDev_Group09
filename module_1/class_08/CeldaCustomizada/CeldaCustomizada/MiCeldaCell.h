//
//  MiCeldaCell.h
//  CeldaCustomizada
//
//  Created by Franti Saúl Huamán Mera on 2/18/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MiCeldaCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nombreDefruta;
@property (weak, nonatomic) IBOutlet UILabel *precioDefruta;
@property (weak, nonatomic) IBOutlet UISwitch *esCaro;

@end
