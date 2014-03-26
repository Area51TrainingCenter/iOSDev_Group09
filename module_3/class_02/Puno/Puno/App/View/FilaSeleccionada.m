//
//  FilaSeleccionada.m
//  Puno
//
//  Created by Franti Saúl Huamán Mera on 3/25/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "FilaSeleccionada.h"

@implementation FilaSeleccionada

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect{
    //// Color Declarations
    UIColor* color = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    UIColor* color2 = [UIColor colorWithRed: 0.41 green: 1 blue: 0.114 alpha: 1];
    
    //// Rectangle Drawing
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(0.5, -0.5, 320, 60)];
    [color2 setFill];
    [rectanglePath fill];
    [color setStroke];
    rectanglePath.lineWidth = 1;
    [rectanglePath stroke];
}

@end
