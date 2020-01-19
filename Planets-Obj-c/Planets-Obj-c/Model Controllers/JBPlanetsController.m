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

NSString *_kIsPlutoAPlanetKey = @"IsPlutoAPlanet";

- (instancetype)init
{
    self = [super init];
    if (self) {
        _planets = [[NSArray alloc] init];
        _planets = [[NSArray alloc] initWithObjects:
                    [[JBPlanet alloc] initWithName:@"Mercury"
                                             image:[UIImage imageNamed:@"mercury"]],
                    [[JBPlanet alloc] initWithName:@"Venus"
                                             image:[UIImage imageNamed:@"venus"]],
                    [[JBPlanet alloc] initWithName:@"Earth"
                                             image:[UIImage imageNamed:@"earth"]],
                    [[JBPlanet alloc] initWithName:@"Mars"
                                             image:[UIImage imageNamed:@"mars"]],
                    [[JBPlanet alloc] initWithName:@"Jupiter"
                                             image:[UIImage imageNamed:@"jupiter"]],
                    [[JBPlanet alloc] initWithName:@"Saturn"
                                             image:[UIImage imageNamed:@"saturn"]],
                    [[JBPlanet alloc] initWithName:@"Uranus"
                                             image:[UIImage imageNamed:@"uranus"]],
                    [[JBPlanet alloc] initWithName:@"Neptune"
                                             image:[UIImage imageNamed:@"neptune"]],
                    nil];
        _pluto = [[JBPlanet alloc] initWithName:@"Pluto"
                                          image:[UIImage imageNamed:@"pluto"]];
    }
    return self;
}

-(NSArray *) planets
{
    if ([NSUserDefaults.standardUserDefaults valueForKey:_kIsPlutoAPlanetKey]) {
        return [_planets arrayByAddingObject:_pluto];
    } else {
        return _planets;
    }
}

+(NSString *)kIsPlutoAPlanetKey {
    return _kIsPlutoAPlanetKey;
}

@end
