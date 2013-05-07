//
//  BADAchievementNotifier.m
//  QuickTicTacToe
//
//  Created by Kyle Kendall on 2/6/13.
//  Copyright (c) 2013 Kyle Kendall. All rights reserved.
//

#import "BADAchievementNotifier.h"
#import "BADConstants.h"

#define TESTING NO

@implementation BADAchievementNotifier

-(void)setNotificationsObserving
{
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(checkNotification:)
                                                 name:CHECKFORACHIEVEMENT
                                               object:nil];
}

-(void)checkNotification:(NSNotification *)notification
{
    NSLog(@"checking Notifications");
    
    NSString *notifName = NULL;
    
    NSString *key = @"time";
    NSDictionary *dictionary = [notification userInfo];
    NSNumber *time = [dictionary valueForKey:key];
    int intTime = [time intValue];
    NSString *dif = [dictionary valueForKey:@"difficulty"];
    NSString *winLossTie = [dictionary valueForKey:@"winLossTie"];
    
    if(TESTING)
    {
        notifName = @"Test Case";
    }
    
    if([winLossTie isEqualToString:@"win"])
    {
        if([[NSUserDefaults standardUserDefaults] integerForKey:WINSVSEASY] == 5 && ![[NSUserDefaults standardUserDefaults] boolForKey:WINFIVEEASY])
        {
            notifName = @"Win 5 Easy";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WINFIVEEASY];
        }
        
        if([[NSUserDefaults standardUserDefaults] integerForKey:WINSVSEASY] == 10 && ![[NSUserDefaults standardUserDefaults] boolForKey:WINTENEASY])
        {
            notifName = @"Win 10 Easy";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WINTENEASY];
        }
        
        if([[NSUserDefaults standardUserDefaults] integerForKey:WINSVSEASY] == 25 && ![[NSUserDefaults standardUserDefaults] boolForKey:WIN25EASY])
        {
            notifName = @"Win 25 Easy";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WIN25EASY];
        }
        
        if([[NSUserDefaults standardUserDefaults] integerForKey:WINSVSEASY] == 100 && ![[NSUserDefaults standardUserDefaults] boolForKey:WIN100EASY])
        {
            notifName = @"Win 100 Easy";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WIN100EASY];
        }
        
        if([[NSUserDefaults standardUserDefaults] integerForKey:WINSVSMEDIUM] == 5 && ![[NSUserDefaults standardUserDefaults] boolForKey:WINFIVEMED])
        {
            notifName = @"Win 5 Medium";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WINFIVEMED];
        }
        
        if([[NSUserDefaults standardUserDefaults] integerForKey:WINSVSMEDIUM] == 10 && ![[NSUserDefaults standardUserDefaults] boolForKey:WINTENMED])
        {
            notifName = @"Win 10 Medium";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WINTENMED];
        }
        
        if([[NSUserDefaults standardUserDefaults] integerForKey:WINSVSMEDIUM] == 25 && ![[NSUserDefaults standardUserDefaults] boolForKey:WIN25MED])
        {
            notifName = @"Win 25 Medium";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WIN25MED];
        }
        
        if([[NSUserDefaults standardUserDefaults] integerForKey:WINSVSMEDIUM] == 100 && ![[NSUserDefaults standardUserDefaults] boolForKey:WIN100MED])
        {
            notifName = @"Win 100 Medium";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WIN100MED];
        }
        
        if([[NSUserDefaults standardUserDefaults] integerForKey:WINSVSHARD] == 5 && ![[NSUserDefaults standardUserDefaults] boolForKey:WINFIVEHARD])
        {
            notifName = @"Win 5 Hard";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WINFIVEHARD];
        }
        
        if([[NSUserDefaults standardUserDefaults] integerForKey:WINSVSHARD] == 10 && ![[NSUserDefaults standardUserDefaults] boolForKey:WINTENHARD])
        {
            notifName = @"Win 10 Hard";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WINTENHARD];
        }
        
        if([[NSUserDefaults standardUserDefaults] integerForKey:WINSVSHARD] == 25 && ![[NSUserDefaults standardUserDefaults] boolForKey:WIN25HARD])
        {
            notifName = @"Win 25 Hard";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WIN25HARD];
        }
        
        if([[NSUserDefaults standardUserDefaults] integerForKey:WINSVSHARD] == 100 && ![[NSUserDefaults standardUserDefaults] boolForKey:WIN100HARD])
        {
            notifName = @"Win 100 Hard";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WIN100HARD];
        }
        
        if(intTime < 10 && ![[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER10EASY] && [dif isEqualToString:@"Easy"])
        {
            notifName = @"Under 10 Easy";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WINUNDER10EASY];
        }
        
        if(intTime < 10 && ![[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER10MED] && [dif isEqualToString:@"Medium"])
        {
            notifName = @"Under 10 Medium";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WINUNDER10MED];
        }
        
        if(intTime < 10 && ![[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER10HARD] && [dif isEqualToString:@"Hard"])
        {
            notifName = @"Under 10 Hard";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WINUNDER10HARD];
        }
        
        if(intTime < 10 && ![[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER10ONLINE] && [dif isEqualToString:@"difficulty"])
        {
            notifName = @"Under 10 Online";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WINUNDER10ONLINE];
        }
        
        if(intTime < 5 && ![[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER5EASY] && [dif isEqualToString:@"Easy"])
        {
            notifName = @"Under 5 Easy";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WINUNDER5EASY];
        }
        
        if(intTime < 5 && ![[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER5MED] && [dif isEqualToString:@"Medium"])
        {
            notifName = @"Under 5 Medium";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WINUNDER5MED];
        }
        
        if(intTime < 5 && ![[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER5HARD] && [dif isEqualToString:@"Hard"])
        {
            notifName = @"Under 5 Hard";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WINUNDER5HARD];
        }
        
        if(intTime < 5 && ![[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER5ONLINE] && [dif isEqualToString:@"difficulty"])
        {
            notifName = @"Under 5 Online";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WINUNDER5ONLINE];
        }
        
        if(intTime < 2 && ![[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER2EASY] && [dif isEqualToString:@"Easy"])
        {
            notifName = @"Under 2 Easy";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WINUNDER2EASY];
        }
        
        if(intTime < 2 && ![[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER2MED] && [dif isEqualToString:@"Medium"])
        {
            notifName = @"Under 2 Medium";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WINUNDER2MED];
        }
        
        if(intTime < 2 && ![[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER2HARD] && [dif isEqualToString:@"Hard"])
        {
            notifName = @"Under 2 Hard";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WINUNDER2HARD];
        }
        
        if(intTime < 2 && ![[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER2ONLINE] && [dif isEqualToString:@"difficulty"])
        {
            notifName = @"Under 2 Online";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WINUNDER2ONLINE];
        }
        
        if(intTime < 1 && ![[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER1EASY] && [dif isEqualToString:@"Easy"])
        {
            notifName = @"Under 1 Easy";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WINUNDER1EASY];
        }
        
        if(intTime < 1 && ![[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER1MED] && [dif isEqualToString:@"Medium"])
        {
            notifName = @"Under 1 Medium";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WINUNDER1MED];
        }
        
        if(intTime < 1 && ![[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER1HARD] && [dif isEqualToString:@"Hard"])
        {
            notifName = @"Under 1 Hard";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WINUNDER1HARD];
        }
        
        if(intTime < 1 && ![[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER1ONLINE] && [dif isEqualToString:@"difficulty"])
        {
            notifName = @"Under 1 Online";
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:WINUNDER1ONLINE];
        }
    }
    
    if(notifName != NULL)
    {
        NSDictionary *userInfo = [NSDictionary dictionaryWithObject:notifName forKey:@"NotifName"];
        [[NSNotificationCenter defaultCenter] postNotificationName:ACHIEVEMENTEARNED object:nil userInfo:userInfo];
    }
}

@end
