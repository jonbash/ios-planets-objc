//
//  JBPlanetsController.h
//  Planets-Obj-c
//
//  Created by Jon Bash on 2020-01-18.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JBPlanet.h"

NS_ASSUME_NONNULL_BEGIN

@interface JBPlanetsController : NSObject

@property(class, nonatomic, assign, readonly) NSString *kIsPlutoAPlanetKey;

@property(nonatomic) NSArray *planets;
@property(nonatomic) JBPlanet *pluto;

@end

NS_ASSUME_NONNULL_END
