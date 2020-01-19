//
//  JBPlanet.m
//  Planets-Obj-c
//
//  Created by Jon Bash on 2020-01-18.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "JBPlanet.h"
#import <UIKit/UIKit.h>

@implementation JBPlanet

- (instancetype)initWithName:(NSString *)name image:(UIImage *)image {
    self = [super init];
    if (self) {
        _name = name;
        _image = image;
    }
    return self;
}

@end
