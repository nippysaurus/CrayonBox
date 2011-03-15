//
//  CrayonBoxViewController.m
//  CrayonBox
//
//  Created by Michael Dawson on 2/03/11.
//  Copyright 2011 Nuance. All rights reserved.
//

#import "CrayonBoxViewController.h"

@implementation CrayonBoxViewController

@synthesize nibLoadedCell;
@synthesize colors;
@synthesize colorDetail;

-(void)awakeFromNib
{
    NSMutableArray *tempMutableArray = [[NSMutableArray alloc] init]; // 1
    
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Almond" HexCode:@"#EFDECD" Red:239 Green:222 Blue:205]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Apricot" HexCode:@"#FDD9B5" Red:253 Green:217 Blue:181]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Aquamarine" HexCode:@"#78DBE2" Red:120 Green:219 Blue:226]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Asparagus" HexCode:@"#87A96B" Red:135 Green:169 Blue:107]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Atomic Tangerine" HexCode:@"#FFA474" Red:255 Green:164 Blue:116]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Banana Mania" HexCode:@"#FAE7B5" Red:250 Green:231 Blue:181]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Beaver" HexCode:@"#9F8170" Red:159 Green:129 Blue:112]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Bittersweet" HexCode:@"#FD7C6E" Red:253 Green:124 Blue:110]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Black" HexCode:@"#000000" Red:0 Green:0 Blue:0]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Blizzard Blue" HexCode:@"#ACE5EE" Red:172 Green:229 Blue:238]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Blue" HexCode:@"#1F75FE" Red:31 Green:117 Blue:254]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Blue Bell" HexCode:@"#A2A2D0" Red:162 Green:162 Blue:208]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Blue Gray" HexCode:@"#6699CC" Red:102 Green:153 Blue:204]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Blue Green" HexCode:@"#0D98BA" Red:13 Green:152 Blue:186]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Blue Violet" HexCode:@"#7366BD" Red:115 Green:102 Blue:189]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Blush" HexCode:@"#DE5D83" Red:222 Green:93 Blue:131]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Brick Red" HexCode:@"#CB4154" Red:203 Green:65 Blue:84]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Brown" HexCode:@"#B4674D" Red:180 Green:103 Blue:77]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Burnt Orange" HexCode:@"#FF7F49" Red:255 Green:127 Blue:73]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Burnt Sienna" HexCode:@"#EA7E5D" Red:234 Green:126 Blue:93]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Cadet Blue" HexCode:@"#B0B7C6" Red:176 Green:183 Blue:198]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Canary" HexCode:@"#FFFF99" Red:255 Green:255 Blue:153]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Caribbean Green" HexCode:@"#1CD3A2" Red:28 Green:211 Blue:162]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Carnation Pink" HexCode:@"#FFAACC" Red:255 Green:170 Blue:204]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Cerise" HexCode:@"#DD4492" Red:221 Green:68 Blue:146]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Cerulean" HexCode:@"#1DACD6" Red:29 Green:172 Blue:214]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Chestnut" HexCode:@"#BC5D58" Red:188 Green:93 Blue:88]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Copper" HexCode:@"#DD9475" Red:221 Green:148 Blue:117]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Cornflower" HexCode:@"#9ACEEB" Red:154 Green:206 Blue:235]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Cotton Candy" HexCode:@"#FFBCD9" Red:255 Green:188 Blue:217]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Dandelion" HexCode:@"#FDDB6D" Red:253 Green:219 Blue:109]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Denim" HexCode:@"#2B6CC4" Red:43 Green:108 Blue:196]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Desert Sand" HexCode:@"#EFCDB8" Red:239 Green:205 Blue:184]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Eggplant" HexCode:@"#6E5160" Red:110 Green:81 Blue:96]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Electric Lime" HexCode:@"#CEFF1D" Red:206 Green:255 Blue:29]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Fern" HexCode:@"#71BC78" Red:113 Green:188 Blue:120]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Forest Green" HexCode:@"#6DAE81" Red:109 Green:174 Blue:129]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Fuchsia" HexCode:@"#C364C5" Red:195 Green:100 Blue:197]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Fuzzy Wuzzy" HexCode:@"#CC6666" Red:204 Green:102 Blue:102]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Gold" HexCode:@"#E7C697" Red:231 Green:198 Blue:151]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Goldenrod" HexCode:@"#FCD975" Red:252 Green:217 Blue:117]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Granny Smith Apple" HexCode:@"#A8E4A0" Red:168 Green:228 Blue:160]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Gray" HexCode:@"#95918C" Red:149 Green:145 Blue:140]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Green" HexCode:@"#1CAC78" Red:28 Green:172 Blue:120]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Green Blue" HexCode:@"#1164B4" Red:17 Green:100 Blue:180]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Green Yellow" HexCode:@"#F0E891" Red:240 Green:232 Blue:145]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Hot Magenta" HexCode:@"#FF1DCE" Red:255 Green:29 Blue:206]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Inchworm" HexCode:@"#B2EC5D" Red:178 Green:236 Blue:93]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Indigo" HexCode:@"#5D76CB" Red:93 Green:118 Blue:203]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Jazzberry Jam" HexCode:@"#CA3767" Red:202 Green:55 Blue:103]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Jungle Green" HexCode:@"#3BB08F" Red:59 Green:176 Blue:143]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Laser Lemon" HexCode:@"#FEFE22" Red:254 Green:254 Blue:34]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Lavender" HexCode:@"#FCB4D5" Red:252 Green:180 Blue:213]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Lemon Yellow" HexCode:@"#FFF44F" Red:255 Green:244 Blue:79]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Macaroni and Cheese" HexCode:@"#FFBD88" Red:255 Green:189 Blue:136]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Magenta" HexCode:@"#F664AF" Red:246 Green:100 Blue:175]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Magic Mint" HexCode:@"#AAF0D1" Red:170 Green:240 Blue:209]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Mahogany" HexCode:@"#CD4A4C" Red:205 Green:74 Blue:76]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Maize" HexCode:@"#EDD19C" Red:237 Green:209 Blue:156]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Manatee" HexCode:@"#979AAA" Red:151 Green:154 Blue:170]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Mango Tango" HexCode:@"#FF8243" Red:255 Green:130 Blue:67]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Maroon" HexCode:@"#C8385A" Red:200 Green:56 Blue:90]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Mauvelous" HexCode:@"#EF98AA" Red:239 Green:152 Blue:170]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Melon" HexCode:@"#FDBCB4" Red:253 Green:188 Blue:180]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Midnight Blue" HexCode:@"#1A4876" Red:26 Green:72 Blue:118]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Mountain Meadow" HexCode:@"#30BA8F" Red:48 Green:186 Blue:143]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Mulberry" HexCode:@"#C54B8C" Red:197 Green:75 Blue:140]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Navy Blue" HexCode:@"#1974D2" Red:25 Green:116 Blue:210]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Neon Carrot" HexCode:@"#FFA343" Red:255 Green:163 Blue:67]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Olive Green" HexCode:@"#BAB86C" Red:186 Green:184 Blue:108]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Orange" HexCode:@"#FF7538" Red:255 Green:117 Blue:56]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Orange Red" HexCode:@"#FF2B2B" Red:255 Green:43 Blue:43]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Orange Yellow" HexCode:@"#F8D568" Red:248 Green:213 Blue:104]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Orchid" HexCode:@"#E6A8D7" Red:230 Green:168 Blue:215]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Outer Space" HexCode:@"#414A4C" Red:65 Green:74 Blue:76]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Outrageous Orange" HexCode:@"#FF6E4A" Red:255 Green:110 Blue:74]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Pacific Blue" HexCode:@"#1CA9C9" Red:28 Green:169 Blue:201]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Peach" HexCode:@"#FFCFAB" Red:255 Green:207 Blue:171]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Periwinkle" HexCode:@"#C5D0E6" Red:197 Green:208 Blue:230]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Piggy Pink" HexCode:@"#FDDDE6" Red:253 Green:221 Blue:230]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Pine Green" HexCode:@"#158078" Red:21 Green:128 Blue:120]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Pink Flamingo" HexCode:@"#FC74FD" Red:252 Green:116 Blue:253]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Pink Sherbert" HexCode:@"#F78FA7" Red:247 Green:143 Blue:167]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Plum" HexCode:@"#8E4585" Red:142 Green:69 Blue:133]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Purple Heart" HexCode:@"#7442C8" Red:116 Green:66 Blue:200]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Purple Mountain's Majesty" HexCode:@"#9D81BA" Red:157 Green:129 Blue:186]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Purple Pizzazz" HexCode:@"#FE4EDA" Red:254 Green:78 Blue:218]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Radical Red" HexCode:@"#FF496C" Red:255 Green:73 Blue:108]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Raw Sienna" HexCode:@"#D68A59" Red:214 Green:138 Blue:89]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Raw Umber" HexCode:@"#714B23" Red:113 Green:75 Blue:35]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Razzle Dazzle Rose" HexCode:@"#FF48D0" Red:255 Green:72 Blue:208]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Razzmatazz" HexCode:@"#E3256B" Red:227 Green:37 Blue:107]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Red" HexCode:@"#EE204D" Red:238 Green:32 Blue:77]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Red Orange" HexCode:@"#FF5349" Red:255 Green:83 Blue:73]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Red Violet" HexCode:@"#C0448F" Red:192 Green:68 Blue:143]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Robin's Egg Blue" HexCode:@"#1FCECB" Red:31 Green:206 Blue:203]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Royal Purple" HexCode:@"#7851A9" Red:120 Green:81 Blue:169]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Salmon" HexCode:@"#FF9BAA" Red:255 Green:155 Blue:170]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Scarlet" HexCode:@"#FC2847" Red:252 Green:40 Blue:71]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Screamin' Green" HexCode:@"#76FF7A" Red:118 Green:255 Blue:122]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Sea Green" HexCode:@"#9FE2BF" Red:159 Green:226 Blue:191]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Sepia" HexCode:@"#A5694F" Red:165 Green:105 Blue:79]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Shadow" HexCode:@"#8A795D" Red:138 Green:121 Blue:93]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Shamrock" HexCode:@"#45CEA2" Red:69 Green:206 Blue:162]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Shocking Pink" HexCode:@"#FB7EFD" Red:251 Green:126 Blue:253]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Silver" HexCode:@"#CDC5C2" Red:205 Green:197 Blue:194]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Sky Blue" HexCode:@"#80DAEB" Red:128 Green:218 Blue:235]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Spring Green" HexCode:@"#ECEABE" Red:236 Green:234 Blue:190]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Sunglow" HexCode:@"#FFCF48" Red:255 Green:207 Blue:72]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Sunset Orange" HexCode:@"#FD5E53" Red:253 Green:94 Blue:83]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Tan" HexCode:@"#FAA76C" Red:250 Green:167 Blue:108]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Teal Blue" HexCode:@"#18A7B5" Red:24 Green:167 Blue:181]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Thistle" HexCode:@"#EBC7DF" Red:235 Green:199 Blue:223]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Tickle Me Pink" HexCode:@"#FC89AC" Red:252 Green:137 Blue:172]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Timberwolf" HexCode:@"#DBD7D2" Red:219 Green:215 Blue:210]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Tropical Rain Forest" HexCode:@"#17806D" Red:23 Green:128 Blue:109]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Tumbleweed" HexCode:@"#DEAA88" Red:222 Green:170 Blue:136]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Turquoise Blue" HexCode:@"#77DDE7" Red:119 Green:221 Blue:231]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Unmellow Yellow" HexCode:@"#FFFF66" Red:255 Green:255 Blue:102]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Violet Purple)" HexCode:@"#926EAE" Red:146 Green:110 Blue:174]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Violet Blue" HexCode:@"#324AB2" Red:50 Green:74 Blue:178]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Violet Red" HexCode:@"#F75394" Red:247 Green:83 Blue:148]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Vivid Tangerine" HexCode:@"#FFA089" Red:255 Green:160 Blue:137]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Vivid Violet" HexCode:@"#8F509D" Red:143 Green:80 Blue:157]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"White" HexCode:@"#FFFFFF" Red:255 Green:255 Blue:255]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Wild Blue Yonder" HexCode:@"#A2ADD0" Red:162 Green:173 Blue:208]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Wild Strawberry" HexCode:@"#FF43A4" Red:255 Green:67 Blue:164]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Wild Watermelon" HexCode:@"#FC6C85" Red:252 Green:108 Blue:133]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Wisteria" HexCode:@"#CDA4DE" Red:205 Green:164 Blue:222]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Yellow" HexCode:@"#FCE883" Red:252 Green:232 Blue:131]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Yellow Green" HexCode:@"#C5E384" Red:197 Green:227 Blue:132]];
    [tempMutableArray addObject:[[Color alloc] initWithColorName:@"Yellow Orange" HexCode:@"#FFAE42" Red:255 Green:174 Blue:66]];

    self.colors = [NSArray arrayWithArray:tempMutableArray]; // auto
    
    for (Color* color in self.colors)
    {
        [color release];
    }
    
    [tempMutableArray release];
    
    //NSLog(@"er");
}

#pragma mark -
#pragma mark Table view data source


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [self.colors count];
    //return 2;
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    ColorTableCell *cell = (ColorTableCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        //cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
		[[NSBundle mainBundle] loadNibNamed:@"ColorTableCell" owner:self options:NULL];
		cell = nibLoadedCell;
    }
    
    //UILabel *colorName = (UILabel*) [cell viewWithTag:1];
    //UILabel *rgbValue = (UILabel*) [cell viewWithTag:2];
    
    Color* color = (Color*)[self.colors objectAtIndex:indexPath.row];
    
    //colorName.text = color.colorName;
    //rgbValue.text = color.rgbValue;
    cell.colorName.text = color.colorName;
    
    // TODO randomly load an image
    
    NSInteger imageNum = (arc4random() % 7) + 1; // 1 .. 7
    NSString *imageNameTemplate = @"Crayon_%i.png";
    NSString *imageName = [NSString stringWithFormat:imageNameTemplate, imageNum];
    UIImage *image = [UIImage imageNamed: imageName];
    
    NSLog(@"random image number: %i", imageNum);
    
    [cell.overlay setImage:image];
    
	return cell;
}

- (void)tableView:(UITableView*)tableView willDisplayCell:(UITableViewCell*)cell forRowAtIndexPath:(NSIndexPath*)indexPath
{
    Color* color = (Color*)[self.colors objectAtIndex:indexPath.row];
    cell.backgroundColor = color.color;
    
    // TODO decide what image to show
}

// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return NO;
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // The table view should not be re-orderable.
    return NO;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here -- for example, create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     NSManagedObject *selectedObject = [[self fetchedResultsController] objectAtIndexPath:indexPath];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
     */
	
	//editingMovie = [moviesArray objectAtIndex:indexPath.row];
	
	//movieEditor.movie = editingMovie;
	
	//[self.navigationController pushViewController:movieEditor animated:YES];

    //ColorDetail *colorDetail = self.colorDetail;
    
    ColorDetail *bla = [[ColorDetail alloc] initWithNibName:@"ColorDetail" bundle:[NSBundle mainBundle]]; // 1
    
    if (bla == nil)
        NSLog(@"failed to load color detail view controller");
    
    bla.color = (Color*)[self.colors objectAtIndex:indexPath.row];
    
    //[self.navigationController pushViewController:colorDetail animated:YES];
    [self.navigationController pushViewController:bla animated:YES];
    //[self.parentViewController.navigationController pushViewController:colorDetail animated:YES];
    
    [bla release];
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

#pragma mark -
#pragma mark Memory Management

//- (void)didReceiveMemoryWarning {
//	// Releases the view if it doesn't have a superview.
//    [super didReceiveMemoryWarning];
//	
//	// Release any cached data, images, etc that aren't in use.
//}

- (void)dealloc {
    [super dealloc];
}

@end
