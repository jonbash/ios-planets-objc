//
//  JBPlanetsCollectionViewController.m
//  Planets-Obj-c
//
//  Created by Jon Bash on 2020-01-18.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "JBPlanetsCollectionViewController.h"

@interface JBPlanetsCollectionViewController ()

@end

@implementation JBPlanetsCollectionViewController

static NSString * const reuseIdentifier = @"PlanetCell";

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _planetsController = [[JBPlanetsController alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
//    UINib *cellNib = [UINib nibWithNibName:@"JBPlanetCollectionViewCell" bundle:nil];
//    [self.collectionView registerNib:cellNib forCellWithReuseIdentifier:reuseIdentifier];
//    [self.collectionView registerClass:[JBPlanetCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];

    [NSNotificationCenter.defaultCenter addObserver:self
                                           selector:NSSelectorFromString(@"updateViews")
                                               name:JBPlanetsController.kPlutoSwitchWasFlipped
                                             object:nil];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self updateViews];
}

- (void)updateViews {
    [self.collectionView reloadData];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.planetsController.planets.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    JBPlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];

    JBPlanet *planet = [self.planetsController.planets objectAtIndex:indexPath.item];

//    [cell.imageView setImage:planet.image];
//    [cell.nameLabel setText:planet.name];
    cell.imageView.image = planet.image;
    cell.nameLabel.text = planet.name;

    CGFloat possibleWidth = (self.view.frame.size.width / 2.0) - 40;
    CGFloat possibleHeight = (self.view.frame.size.height / 2.0) - 40;
    CGFloat cellWidth = MIN(possibleWidth, possibleHeight);

    [cell setCellWidth:cellWidth];

    return cell;
}

#pragma mark - Popover

- (UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller {
    return UIModalPresentationNone;
}

- (void)presentationControllerWillDismiss:(UIPresentationController *)presentationController {
    [self updateViews];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"ShowSettingsSegue"]) {
        [segue.destinationViewController.popoverPresentationController setDelegate:self];
        [segue.destinationViewController.presentationController setDelegate:self];

        JBPlanetCollectionViewCell *cell = [self.collectionView.visibleCells objectAtIndex:0];
        UIImageView *image = cell.imageView;
        NSLog(@"%@", image);
    }
}

@end
