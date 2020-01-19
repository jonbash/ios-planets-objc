//
//  JBSettingsViewController.m
//  Planets-Obj-c
//
//  Created by Jon Bash on 2020-01-18.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "JBSettingsViewController.h"
#import "JBPlanetsController.h"

@interface JBSettingsViewController ()

@end

@implementation JBSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)doneButtonTapped:(id)sender {
}

- (IBAction)plutoSwitchChanged:(id)sender {
    [NSUserDefaults.standardUserDefaults
     setBool:_plutoSwitch.isOn
     forKey:JBPlanetsController.kIsPlutoAPlanetKey];
}
@end
