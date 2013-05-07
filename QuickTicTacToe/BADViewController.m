//
//  BADViewController.m
//  QuickTicTacToe
//
//  Created by Kyle Kendall on 1/5/13.
//  Copyright (c) 2013 Kyle Kendall. All rights reserved.
//

#import "BADViewController.h"
#import "BADConstants.h"
#import "BADAchievementView.h"

@interface BADViewController ()

@end

@implementation BADViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //[NSUserDefaults resetStandardUserDefaults];

    NSString *dif = [[NSUserDefaults standardUserDefaults] valueForKey:DIFFICULTY];
    NSString *xuser = [[NSUserDefaults standardUserDefaults] valueForKey:XPLAYERTAG];
    NSString *ouser = [[NSUserDefaults standardUserDefaults] valueForKey:OPLAYERTAG];
    NSString *oImage = [[NSUserDefaults standardUserDefaults] valueForKey:OIMAGES];
    NSString *xImage = [[NSUserDefaults standardUserDefaults] valueForKey:XIMAGES];
    if(!(dif && xuser && ouser && oImage && xImage))
    {
        [[NSUserDefaults standardUserDefaults] setValue:@"Easy" forKey:DIFFICULTY];
        [[NSUserDefaults standardUserDefaults] setValue:@"X" forKey:XPLAYERTAG];
        [[NSUserDefaults standardUserDefaults] setValue:@"O" forKey:OPLAYERTAG];
        [[NSUserDefaults standardUserDefaults] setValue:@"pieceO.png" forKey:OIMAGES];
        [[NSUserDefaults standardUserDefaults] setValue:@"pieceX.png" forKey:XIMAGES];
    }
    
//    BADAchievementView *temporaryView = (BADAchievementView *)[[[NSBundle mainBundle] loadNibNamed:@"BADAchievementView" owner:self options:nil] objectAtIndex:0];
//    
//    CGRect f = temporaryView.frame;
//    f.origin.x = 90;
//    f.origin.y = -30;
//    temporaryView.frame = f;
//    
//    [self.view addSubview:temporaryView];
//    
//    [temporaryView setAppear];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)shareBtnTUI:(id)sender
{
    
}
@end
