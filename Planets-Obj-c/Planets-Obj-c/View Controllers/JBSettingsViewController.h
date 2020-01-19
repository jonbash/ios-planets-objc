//
//  JBSettingsViewController.h
//  Planets-Obj-c
//
//  Created by Jon Bash on 2020-01-18.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JBSettingsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISwitch *plutoSwitch;

- (IBAction)doneButtonTapped:(id)sender;
- (IBAction)plutoSwitchChanged:(id)sender;

@end

NS_ASSUME_NONNULL_END
