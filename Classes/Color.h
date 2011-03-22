//
//  Color.h
//  CrayonBox
//
//  Created by Michael Dawson on 2/03/11.
//  Copyright 2011 Nippysaurus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Color : NSObject {
    
    NSString *colorName;
    NSString *hexCode;
    UIColor *color;
    
    NSInteger red;
    NSInteger green;
    NSInteger blue;

}

@property (retain, nonatomic) NSString *colorName;
@property (retain, nonatomic) NSString *hexCode;
@property (retain, nonatomic) UIColor *color;

@property (nonatomic) NSInteger red;
@property (nonatomic) NSInteger green;
@property (nonatomic) NSInteger blue;

- (id)initWithColorName:(NSString*)colorName HexCode:(NSString*)hexCode Red:(NSInteger)red Green:(NSInteger)green Blue:(NSInteger)blue;

@end