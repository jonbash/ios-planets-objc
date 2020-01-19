//
//  JBPlanetsController.m
//  Planets-Obj-c
//
//  Created by Jon Bash on 2020-01-18.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JBPlanetsController.h"
#import "JBPlanet.h"

@implementation JBPlanetsController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _planets = [[NSArray alloc] init];
        _planets = [[NSArray alloc] initWithObjects:
                    [[JBPlanet alloc] initWithName:@"Mercury"
                                             image:[UIImage imageNamed:@"mercury.png"]],
                    [[JBPlanet alloc] initWithName:@"Venus"
                                             image:[UIImage imageNamed:@"venus.png"]],
                    [[JBPlanet alloc] initWithName:@"Earth"
                                             image:[UIImage imageNamed:@"earth.png"]],
                    [[JBPlanet alloc] initWithName:@"Mars"
                                             image:[UIImage imageNamed:@"mars.png"]],
                    [[JBPlanet alloc] initWithName:@"Jupiter"
                                             image:[UIImage imageNamed:@"jupiter.png"]],
                    [[JBPlanet alloc] initWithName:@"Saturn"
                                             image:[UIImage imageNamed:@"saturn.png"]],
                    [[JBPlanet alloc] initWithName:@"Uranus"
                                             image:[UIImage imageNamed:@"uranus.png"]],
                    [[JBPlanet alloc] initWithName:@"Neptune"
                                             image:[UIImage imageNamed:@"neptune.png"]],
                    nil];
        _pluto = [[JBPlanet alloc] initWithName:@"Pluto"
                                          image:[UIImage imageNamed:@"pluto.png"]];
    }
    return self;
}

@end
