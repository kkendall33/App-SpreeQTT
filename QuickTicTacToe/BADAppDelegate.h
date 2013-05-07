//
//  BADAppDelegate.h
//  QuickTicTacToe
//
//  Created by Kyle Kendall on 1/5/13.
//  Copyright (c) 2013 Kyle Kendall. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BADAchievementNotifier.h"

@interface BADAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong) BADAchievementNotifier *notifier;

@end
