//
//  SecondViewController.m
//  PGCommons
//
//  Created by Uauker on 2/22/14.
//  Copyright (c) 2014 Uauker Inc. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.empty = [[PGEmptyView alloc] initWithDelegate:self];
    
    [self.empty show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark PGEmptyViewDelegate

- (UIView *)viewToLoading {
    return self.view;
}

@end
