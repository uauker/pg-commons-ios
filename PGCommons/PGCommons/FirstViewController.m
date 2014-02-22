//
//  FirstViewController.m
//  PGCommons
//
//  Created by Uauker on 2/22/14.
//  Copyright (c) 2014 Uauker Inc. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.loading = [[PGLoadingView alloc] initWithDelegate:self];

    [self.loading show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark PGLoadingViewDelegate

- (UIView *)viewToLoading {
    return self.view;
}

@end
