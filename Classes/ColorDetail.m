//
//  ColorDetail.m
//  CrayonBox
//
//  Created by Michael Dawson on 3/03/11.
//  Copyright 2011 Nuance. All rights reserved.
//

#import "ColorDetail.h"

@implementation ColorDetail

@synthesize color;

@synthesize colorNameLabel;

@synthesize hexValue;
@synthesize redValue;
@synthesize greenValue;
@synthesize blueValue;

//-(void)awakeFromNib
//{
//    //NSLog(<#NSString *format, ...#>);
//    //
//}

//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}

//- (void)dealloc
//{
//    [super dealloc];
//}
//
//- (void)didReceiveMemoryWarning
//{
//    // Releases the view if it doesn't have a superview.
//    [super didReceiveMemoryWarning];
//    
//    // Release any cached data, images, etc that aren't in use.
//}

-(IBAction)done {
	//[[self parentViewController] dismissModalViewControllerAnimated:YES];
	[self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - View lifecycle

- (void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];

    self.colorNameLabel.text = self.color.colorName;
    
    self.hexValue.text = self.color.hexCode;
    
    self.view.backgroundColor = self.color.color;
    //[self set
    
    //self.redValue.text = [self.color.color.CGColor 
    self.redValue.text = [NSString stringWithFormat:@"Red: %i", self.color.red];
    self.greenValue.text = [NSString stringWithFormat:@"Green: %i", self.color.green];
    self.blueValue.text = [NSString stringWithFormat:@"Blue: %i", self.color.blue];
    
//	self.titleField.text = self.movie.title;
//	self.summaryField.text = self.movie.summary;
//	NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
//	[formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
//	self.boxOfficeGrossField.text =	[formatter stringFromNumber:self.movie.boxOfficeGross];
//	[formatter release];
}

//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//    // Do any additional setup after loading the view from its nib.
//}
//
//- (void)viewDidUnload
//{
//    [super viewDidUnload];
//    // Release any retained subviews of the main view.
//    // e.g. self.myOutlet = nil;
//}
//
//- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
//{
//    // Return YES for supported orientations
//    return (interfaceOrientation == UIInterfaceOrientationPortrait);
//}

@end