//
//  BADSettingsViewController.m
//  QuickTicTacToe
//
//  Created by Kyle Kendall on 1/6/13.
//  Copyright (c) 2013 Kyle Kendall. All rights reserved.
//

#import "BADSettingsViewController.h"
#import "BADConstants.h"

@interface BADSettingsViewController ()

@end

@implementation BADSettingsViewController

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
    
    self.xPlayerTxtField.delegate = self;
    self.oPlayerTxtField.delegate = self;
    
    NSString *xPlayerName = [[NSUserDefaults standardUserDefaults] valueForKey:XPLAYERTAG];
    NSString *oPlayerName = [[NSUserDefaults standardUserDefaults] valueForKey:OPLAYERTAG];
    
    self.xPlayerTxtField.text = xPlayerName;
    self.oPlayerTxtField.text = oPlayerName;
    
    int easyWins = [[NSUserDefaults standardUserDefaults] integerForKey:WINSVSEASY];
    self.winsVsEasy.text = [NSString stringWithFormat:@"%i", easyWins];
    
    int hardWins = [[NSUserDefaults standardUserDefaults] integerForKey:WINSVSHARD];
    self.winsVsHard.text = [NSString stringWithFormat:@"%i", hardWins];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)saveSettingsBtn:(id)sender
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    [userDefaults setObject:self.xPlayerTxtField.text forKey:XPLAYERTAG];
    [userDefaults setObject:self.oPlayerTxtField.text forKey:OPLAYERTAG];
    [userDefaults synchronize];
    
    [self.xPlayerTxtField resignFirstResponder];
    [self.oPlayerTxtField resignFirstResponder];
}

- (IBAction)difficultyTUI:(UIButton *)sender
{
    NSString *setting = sender.titleLabel.text;
    
    [[NSUserDefaults standardUserDefaults] setObject:setting forKey:DIFFICULTY];
}

@end
