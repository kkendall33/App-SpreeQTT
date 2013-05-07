//
//  BADExtrasViewController.m
//  QuickTicTacToe
//
//  Created by Kyle Kendall on 1/6/13.
//  Copyright (c) 2013 Kyle Kendall. All rights reserved.
//

#import "BADExtrasViewController.h"
#import "BADAchievements.h"
#import "BADConstants.h"

@interface BADExtrasViewController ()

@property (nonatomic, strong) NSArray *array;
@property (nonatomic, strong) NSDictionary *dictionary;
@property (nonatomic, strong) NSString *name;

@end

@implementation BADExtrasViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.achievementScrollView.delegate = self;
    
//    self.tableViewData = [NSArray arrayWithObjects:@"Win Game Against Easy - Unlock Online Play",@"Win Game Against Medium - Unlock Multiplayer",@"Win Game Against Hard",@"Win 10 Games Against Easy",@"Win 10 Games Against Medium",@"Win 10 Games Against Hard",@"Win a Game in Under 10 Seconds",@"Win Game in Under 5 Seconds",@"Win a Game in under 2 Seconds",@"Win Game in Under 1 second",@"Lose a game in Under .5 seconds", @"Like Quick Tic-Tac Toe Facebook Page",@"Win a Game Online",@"Change X and O Design",@"Win 2-Player Match in 3 moves",@"Win 2 Games in a Row Easy",@"Win 5 Games in a row Easy",@"Win 10 Games in a Row Easy",@"Win 20 Games in a Row Easy - Unlock X/O design",@"Win 2 Games in a Row Medium",@"Win 5 Games in a row Medium",@"Win 10 Games in a Row Medium",@"Win 20 Games in a Row Medium - Unlock X/O design",@"Win 2 Games in a Row Hard",@"Win 5 Games in a row Hard",@"Win 10 Games in a Row Hard",@"Win 20 Games in a Row Hard - Unlock X/O design",@"Win 2 Games in a Row Online",@"Win 5 Games in a row Online",@"Win 10 Games in a Row Online",@"Win 20 Games in a Row Online - Unlock X/O design",@"Win 50 Games on Online",@"Win 100 Games on Online", @"Win 200 Games on Online",@"Win 1,000 Games on Online - Unlock X/O design",@"Win 5,000 Games on Online - Unlock X/O design",@"Win 50 Games on Hard",@"Win 100 Games on Hard", @"Win 200 Games on Hard",@"Win 1,000 Games on Hard - Unlock X/O design",@"Win 5,000 Games on Hard - Unlock X/O design",nil];
    
    self.tableViewData = [NSArray arrayWithObjects:@"Win 5 games", @"Win 10 games", @"Win 25 games", @"Win 100 games", @"Win game in under 10 seconds", @"Win game in under 5 seconds", @"Win game in under 2 seconds", @"Win game in under 1 second", nil];
    
    [self SetStats];
    
//    CGSize f = self.achievementScrollView.contentSize;
//    f.height = 122;
//    f.width = 0;
//    self.achievementScrollView.contentSize = f;
    
    for(int i = 0; i < 8; i++)
    {
        BADAchievements *temporaryView = (BADAchievements *)[[[NSBundle mainBundle] loadNibNamed:@"BADAchievements" owner:self options:nil] objectAtIndex:0];
        
        CGRect f = temporaryView.frame;
        f.size.width = 320;
        f.origin.x = (i * 320);
        //f.size.width = 320;
        temporaryView.frame = f;
        
        CGSize s = self.achievementScrollView.contentSize;
        s.width = f.origin.x + f.size.width;
        [self.achievementScrollView setContentSize:s];
        
//        if(i == 2)
//            [temporaryView.easyImage setImage:[UIImage imageNamed:@"pieceO.png"] forState:UIControlStateNormal];
        
        if(i == 0)
        {
            if([[NSUserDefaults standardUserDefaults] boolForKey:WINFIVEEASY])
                [temporaryView.easyImage setEnabled:YES];
            
            if([[NSUserDefaults standardUserDefaults] boolForKey:WINFIVEMED])
                [temporaryView.mediumImage setEnabled:YES];
            
            if([[NSUserDefaults standardUserDefaults] boolForKey:WINFIVEHARD])
                [temporaryView.hardImage setEnabled:YES];
            
            if([[NSUserDefaults standardUserDefaults] boolForKey:WINFIVEONLINE])
                [temporaryView.onlineImage setEnabled:YES];
        }else if (i == 1)
        {
            if([[NSUserDefaults standardUserDefaults] boolForKey:WINTENEASY])
                [temporaryView.easyImage setEnabled:YES];
            
            if([[NSUserDefaults standardUserDefaults] boolForKey:WINTENMED])
                [temporaryView.mediumImage setEnabled:YES];
            
            if([[NSUserDefaults standardUserDefaults] boolForKey:WINTENHARD])
                [temporaryView.hardImage setEnabled:YES];
            
            if([[NSUserDefaults standardUserDefaults] boolForKey:WINTENONLINE])
                [temporaryView.onlineImage setEnabled:YES];
        }else if(i == 2)
        {
            if([[NSUserDefaults standardUserDefaults] boolForKey:WIN25EASY])
                [temporaryView.easyImage setEnabled:YES];
            
            if([[NSUserDefaults standardUserDefaults] boolForKey:WIN25MED])
                [temporaryView.mediumImage setEnabled:YES];
            
            if([[NSUserDefaults standardUserDefaults] boolForKey:WIN25HARD])
                [temporaryView.hardImage setEnabled:YES];
            
            if([[NSUserDefaults standardUserDefaults] boolForKey:WIN25ONLINE])
                [temporaryView.onlineImage setEnabled:YES];
        }else if (i == 3)
        {
            if([[NSUserDefaults standardUserDefaults] boolForKey:WIN100EASY])
                [temporaryView.easyImage setEnabled:YES];
            
            if([[NSUserDefaults standardUserDefaults] boolForKey:WIN100MED])
                [temporaryView.mediumImage setEnabled:YES];
            
            if([[NSUserDefaults standardUserDefaults] boolForKey:WIN100HARD])
                [temporaryView.hardImage setEnabled:YES];
            
            if([[NSUserDefaults standardUserDefaults] boolForKey:WIN100ONLINE])
                [temporaryView.onlineImage setEnabled:YES];
        }else if (i == 4)
        {
            if([[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER10EASY])
                [temporaryView.easyImage setEnabled:YES];
            
            if([[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER10MED])
                [temporaryView.mediumImage setEnabled:YES];
            
            if([[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER10HARD])
                [temporaryView.hardImage setEnabled:YES];
            
            if([[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER10ONLINE])
                [temporaryView.onlineImage setEnabled:YES];
        }else if (i == 5)
        {
            if([[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER5EASY])
                [temporaryView.easyImage setEnabled:YES];
            
            if([[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER5MED])
                [temporaryView.mediumImage setEnabled:YES];
            
            if([[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER5HARD])
                [temporaryView.hardImage setEnabled:YES];
            
            if([[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER5ONLINE])
                [temporaryView.onlineImage setEnabled:YES];
        }else if (i == 6)
        {
            if([[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER2EASY])
                [temporaryView.easyImage setEnabled:YES];
            
            if([[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER2MED])
                [temporaryView.mediumImage setEnabled:YES];
            
            if([[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER2HARD])
                [temporaryView.hardImage setEnabled:YES];
            
            if([[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER2ONLINE])
                [temporaryView.onlineImage setEnabled:YES];
        }else if (i == 7)
        {
            if([[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER1EASY])
                [temporaryView.easyImage setEnabled:YES];
            
            if([[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER1MED])
                [temporaryView.mediumImage setEnabled:YES];
            
            if([[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER1HARD])
                [temporaryView.hardImage setEnabled:YES];
            
            if([[NSUserDefaults standardUserDefaults] boolForKey:WINUNDER1ONLINE])
                [temporaryView.onlineImage setEnabled:YES];
        }
        
        [self.achievementScrollView addSubview:temporaryView];
    }
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGPoint offset = scrollView.contentOffset;
    
    int pageNum = (offset.x + 160) / 320;
    NSLog(@"%i", pageNum);
    
    self.achievementDesc.text = [self.tableViewData objectAtIndex:pageNum];
    
    if(pageNum == 0)
    {
         [UIView animateWithDuration:0.3 animations:^{
             [self.leftButton setAlpha:0];
         }];
    }else
    {
        //[self.leftButton setHidden:NO];
        
        [UIView animateWithDuration:0.3 animations:^{
            [self.leftButton setAlpha:1];
        }];
    }
    
    if(pageNum == [self.tableViewData count]-1)
    {
        //[self.rightButton setHidden:YES];
        
        [UIView animateWithDuration:0.3 animations:^{
            [self.rightButton setAlpha:0];
        }];
    }else
    {
        [self.rightButton setHidden:NO];
        
        [UIView animateWithDuration:0.3 animations:^{
            [self.rightButton setAlpha:1];
        }];
    }
}

-(void)SetStats
{
    int totalGamesPlayed = 0;
    
    int tempInt = [[NSUserDefaults standardUserDefaults] integerForKey:LOSSONLINE];
    self.onlineLossLbl.text = [NSString stringWithFormat:@"%i", tempInt];
    totalGamesPlayed += tempInt;
    
    tempInt = [[NSUserDefaults standardUserDefaults] integerForKey:LOSSVSEASY];
    self.easyLossLbl.text = [NSString stringWithFormat:@"%i", tempInt];
    totalGamesPlayed += tempInt;
    
    tempInt = [[NSUserDefaults standardUserDefaults] integerForKey:LOSSVSMEDIUM];
    self.mediumLossLbl.text = [NSString stringWithFormat:@"%i", tempInt];
    totalGamesPlayed += tempInt;
    
    tempInt = [[NSUserDefaults standardUserDefaults] integerForKey:LOSSVSHARD];
    self.hardLossLbl.text = [NSString stringWithFormat:@"%i", tempInt];
    totalGamesPlayed += tempInt;
    
    tempInt = [[NSUserDefaults standardUserDefaults] integerForKey:WINSONLINE];
    self.onlineWinsLbl.text = [NSString stringWithFormat:@"%i", tempInt];
    totalGamesPlayed += tempInt;
    
    tempInt = [[NSUserDefaults standardUserDefaults] integerForKey:WINSVSEASY];
    self.easyWinsLbl.text = [NSString stringWithFormat:@"%i", tempInt];
    totalGamesPlayed += tempInt;
    
    tempInt = [[NSUserDefaults standardUserDefaults] integerForKey:WINSVSMEDIUM];
    self.mediumWinsLbl.text = [NSString stringWithFormat:@"%i", tempInt];
    totalGamesPlayed += tempInt;
    
    tempInt = [[NSUserDefaults standardUserDefaults] integerForKey:WINSVSHARD];
    self.hardWinsLbl.text = [NSString stringWithFormat:@"%i", tempInt];
    totalGamesPlayed += tempInt;
    
    tempInt = [[NSUserDefaults standardUserDefaults] integerForKey:TIEONLINE];
    self.onlineTieLbl.text = [NSString stringWithFormat:@"%i", tempInt];
    totalGamesPlayed += tempInt;
    
    tempInt = [[NSUserDefaults standardUserDefaults] integerForKey:TIEVSEASY];
    self.easyTieLbl.text = [NSString stringWithFormat:@"%i", tempInt];
    totalGamesPlayed += tempInt;
    
    tempInt = [[NSUserDefaults standardUserDefaults] integerForKey:TIEVSMEDIUM];
    self.mediumTieLbl.text = [NSString stringWithFormat:@"%i", tempInt];
    totalGamesPlayed += tempInt;
    
    tempInt = [[NSUserDefaults standardUserDefaults] integerForKey:TIEVSHARD];
    self.hardTieLbl.text = [NSString stringWithFormat:@"%i", tempInt];
    totalGamesPlayed += tempInt;
    
    self.totalGamesLbl.text = [NSString stringWithFormat:@"%i", totalGamesPlayed];
}

-(void)setAllBadgesToDisabled
{
    
}

- (IBAction)BackTUI:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)leftBtnTUI:(id)sender
{
    CGPoint offset = self.achievementScrollView.contentOffset;
    offset.x -= 320;
    
    int pageNum = offset.x / 320;
    offset.x = (pageNum * 320);
    
    //[UIView animateWithDuration:0.3 animations:^{
    
    
    [self.achievementScrollView setContentOffset:offset animated:YES];
    //}];
}

- (IBAction)rightBtnTUI:(id)sender
{
    CGPoint offset = self.achievementScrollView.contentOffset;
    offset.x += 320;
    
    int pageNum = offset.x / 320;
    int offsetX = offset.x;
    
    
    if(offsetX % 320 != 0) pageNum++;

    offset.x = (pageNum * 320);
    
    //[UIView animateWithDuration:0.3 animations:^{
    
    if(offset.x < self.achievementScrollView.contentSize.width)
        [self.achievementScrollView setContentOffset:offset animated:YES];
    //}];
}

- (IBAction)resetTUI:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Game Over"
                                                    message:@"Are you sure you want to reset all stats?"
                                                   delegate:self
                                          cancelButtonTitle:@"No"
                                          otherButtonTitles:@"Yes", nil];
    [alert show];
    

}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex == 1)
    {
        [[NSUserDefaults standardUserDefaults] setBool:NO forKey:WINFIVEEASY];
        [[NSUserDefaults standardUserDefaults] setBool:NO forKey:WINFIVEMED];
        [[NSUserDefaults standardUserDefaults] setBool:NO forKey:WINFIVEHARD];
        [[NSUserDefaults standardUserDefaults] setBool:NO forKey:WINFIVEONLINE];
        [[NSUserDefaults standardUserDefaults] setBool:NO forKey:WINTENEASY];
        [[NSUserDefaults standardUserDefaults] setBool:NO forKey:WINTENMED];
        [[NSUserDefaults standardUserDefaults] setBool:NO forKey:WINTENHARD];
        [[NSUserDefaults standardUserDefaults] setBool:NO forKey:WINTENONLINE];
        
        [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:WINSVSEASY];
        [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:WINSVSMEDIUM];
        [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:WINSVSHARD];
        [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:WINSONLINE];
        [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:LOSSVSEASY];
        [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:LOSSVSMEDIUM];
        [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:LOSSVSHARD];
        [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:LOSSONLINE];
        [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:TIEVSEASY];
        [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:TIEVSMEDIUM];
        [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:TIEVSHARD];
        [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:TIEONLINE];
        [self SetStats];
    }
}

@end
