//
//  BADExtrasViewController.h
//  QuickTicTacToe
//
//  Created by Kyle Kendall on 1/6/13.
//  Copyright (c) 2013 Kyle Kendall. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BADExtrasViewController : UIViewController<UIScrollViewDelegate>

- (IBAction)BackTUI:(id)sender;
- (IBAction)leftBtnTUI:(id)sender;
- (IBAction)rightBtnTUI:(id)sender;

@property (weak, nonatomic) IBOutlet UIScrollView *achievementScrollView;
@property (strong, nonatomic) NSMutableArray *tableViewData;
@property (weak, nonatomic) IBOutlet UILabel *achievementDesc;

@property (weak, nonatomic) IBOutlet UIButton *leftButton;

@property (weak, nonatomic) IBOutlet UIButton *rightButton;
@property (weak, nonatomic) IBOutlet UILabel *totalGamesLbl;


@property (weak, nonatomic) IBOutlet UILabel *onlineWinsLbl;
@property (weak, nonatomic) IBOutlet UILabel *easyWinsLbl;
@property (weak, nonatomic) IBOutlet UILabel *mediumWinsLbl;
@property (weak, nonatomic) IBOutlet UILabel *hardWinsLbl;
@property (weak, nonatomic) IBOutlet UILabel *onlineLossLbl;
@property (weak, nonatomic) IBOutlet UILabel *easyLossLbl;
@property (weak, nonatomic) IBOutlet UILabel *mediumLossLbl;
@property (weak, nonatomic) IBOutlet UILabel *hardLossLbl;
@property (weak, nonatomic) IBOutlet UILabel *onlineTieLbl;
@property (weak, nonatomic) IBOutlet UILabel *easyTieLbl;
@property (weak, nonatomic) IBOutlet UILabel *mediumTieLbl;
@property (weak, nonatomic) IBOutlet UILabel *hardTieLbl;

- (IBAction)resetTUI:(id)sender;

@end
