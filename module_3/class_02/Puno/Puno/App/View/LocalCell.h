//
//  LocalCell.h
//  Puno
//
//  Created by Franti Saúl Huamán Mera on 3/25/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LocalCellDelegate <NSObject>
- (void)mostrarFotoEnGrande:(id)sender;
@end

@interface LocalCell : UITableViewCell
- (IBAction)mostrarFoto:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *precio_restaurante;
@property (weak, nonatomic) IBOutlet UILabel *nombre_restaurante;
@property (nonatomic, weak) id<LocalCellDelegate> delegate;
@property (weak, nonatomic) IBOutlet UIButton *botonQueMuestraFoto;
@end
