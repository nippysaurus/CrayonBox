//
//  CrayonBoxAppDelegate.h
//  CrayonBox
//
//  Created by Michael Dawson on 2/03/11.
//  Copyright 2011 Nuance. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CrayonBoxViewController;

@interface CrayonBoxAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    CrayonBoxViewController *viewController;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet CrayonBoxViewController *viewController;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

