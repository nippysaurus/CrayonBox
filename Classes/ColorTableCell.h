//
//  ColorTableCell.h
//  CrayonBox
//
//  Created by Michael Dawson on 5/03/11.
//  Copyright 2011 Nippysaurus. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ColorTableCell : UITableViewCell {
    
    UILabel *colorName;
    UIImageView *overlay;
}

@property (retain, nonatomic) IBOutlet UILabel *colorName;
@property (retain, nonatomic) IBOutlet UIImageView *overlay;

@end
