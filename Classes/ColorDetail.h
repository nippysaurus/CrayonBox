//
//  ColorDetail.h
//  CrayonBox
//
//  Created by Michael Dawson on 3/03/11.
//  Copyright 2011 Nippysaurus. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Color.h"

@interface ColorDetail : UIViewController {
    
    Color *color;

    UILabel *colorNameLabel;

    UILabel *hexCode;
    UILabel *redValue;
    UILabel *greenValue;
    UILabel *blueValue;
}

@property (nonatomic, retain) Color *color;

@property (nonatomic, retain) IBOutlet UILabel *colorNameLabel;

@property (retain, nonatomic) IBOutlet UILabel *hexValue;
@property (retain, nonatomic) IBOutlet UILabel *redValue;
@property (retain, nonatomic) IBOutlet UILabel *greenValue;
@property (retain, nonatomic) IBOutlet UILabel *blueValue;

-(IBAction)done;

@end