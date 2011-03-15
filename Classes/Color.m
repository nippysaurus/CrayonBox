//
//  Color.m
//  CrayonBox
//
//  Created by Michael Dawson on 2/03/11.
//  Copyright 2011 Nuance. All rights reserved.
//

#import "Color.h"

@implementation Color

@synthesize colorName;
@synthesize hexCode;
@synthesize color;

@synthesize red;
@synthesize green;
@synthesize blue;

- (id)initWithColorName:(NSString*)thisColorName HexCode:(NSString*)thisHexCode Red:(NSInteger)thisRed Green:(NSInteger)thisGreen Blue:(NSInteger)thisBlue {
    self = [super init];
    
    if (self) {
        self.colorName = thisColorName;
        self.hexCode = thisHexCode;

        self.red = thisRed;
        self.green = thisGreen;
        self.blue = thisBlue;
        
        self.color = [UIColor colorWithRed:(self.red / 255.0f) green:(self.green / 255.0f) blue:(self.blue / 255.0f) alpha:1];
    }
    
    return self;
}

@end