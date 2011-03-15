//
//  CrayonBoxViewController.h
//  CrayonBox
//
//  Created by Michael Dawson on 2/03/11.
//  Copyright 2011 Nuance. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Color.h"
#import "ColorDetail.h"
#import "ColorTableCell.h"

#include <stdlib.h>

@interface CrayonBoxViewController : UITableViewController {

    ColorTableCell *nibLoadedCell;
    
    NSArray* colors;

    ColorDetail *colorDetail;
}

@property (retain, nonatomic) IBOutlet ColorTableCell *nibLoadedCell;
@property (retain, nonatomic) NSArray *colors;
@property (retain, nonatomic) IBOutlet ColorDetail *colorDetail;

@end