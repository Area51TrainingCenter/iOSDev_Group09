//
//  MiPickerViewController.h
//  FormBuenaPractica
//
//  Created by Franti Saúl Huamán Mera on 4/8/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MiPickerViewControllerDelegate <NSObject>
- (void)pasarElementoSeleccionado:(NSDictionary *)item;
@end

@interface MiPickerViewController : UIViewController
@property (nonatomic, weak) id<MiPickerViewControllerDelegate> delegate;
@property (nonatomic, strong) NSArray *listaAMostrar;
@end
