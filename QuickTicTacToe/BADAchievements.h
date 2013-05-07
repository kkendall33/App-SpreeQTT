//
//  BADAchievements.h
//  QuickTicTacToe
//
//  Created by Kyle Kendall on 2/4/13.
//  Copyright (c) 2013 Kyle Kendall. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BADAchievements : UIView

@property (weak, nonatomic) IBOutlet UIButton *easyImage;
@property (weak, nonatomic) IBOutlet UIButton *mediumImage;
@property (weak, nonatomic) IBOutlet UIButton *hardImage;
@property (weak, nonatomic) IBOutlet UIButton *onlineImage;

- (IBAction)buttonTUI:(id)sender;

@end
