//
//  MindItAppDelegate.h
//  MindIt
//
//  Created by Karim DRIDI on 28/03/11.
//  Copyright 2011 personal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MindItAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

