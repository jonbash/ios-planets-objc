//
//  JBPlanet.h
//  Planets-Obj-c
//
//  Created by Jon Bash on 2020-01-18.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JBPlanet : NSObject

@property NSString *name;
@property UIImage *image;

- (instancetype)initWithName:(NSString *)name image:(UIImage *)image;

@end

NS_ASSUME_NONNULL_END
