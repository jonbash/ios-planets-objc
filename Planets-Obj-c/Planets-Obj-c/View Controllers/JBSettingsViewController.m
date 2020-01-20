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

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    // works
    BOOL plutoIsPlanet = [NSUserDefaults.standardUserDefaults boolForKey:JBPlanetsController.kIsPlutoAPlanetKey];
    self.plutoSwitch.on = plutoIsPlanet;
    // doesn't work
    //    BOOL plutoIsPlanet = [NSUserDefaults.standardUserDefaults valueForKey:JBPlanetsController.kIsPlutoAPlanetKey];
    //    [self.plutoSwitch setOn:plutoIsPlanet];
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
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)plutoSwitchChanged:(UISwitch *)sender {
    BOOL plutoIsPlanet = sender.isOn;
    [NSUserDefaults.standardUserDefaults setBool:plutoIsPlanet
                                          forKey:JBPlanetsController.kIsPlutoAPlanetKey];
    [NSNotificationCenter.defaultCenter postNotificationName:JBPlanetsController.kPlutoSwitchWasFlipped
                                                      object:self];
}

@end
