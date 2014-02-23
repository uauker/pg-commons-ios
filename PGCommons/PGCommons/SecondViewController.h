//
//  SecondViewController.h
//  PGCommons
//
//  Created by Uauker on 2/22/14.
//  Copyright (c) 2014 Uauker Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PGEmptyView.h"

@interface SecondViewController : UIViewController <PGEmptyViewDelegate>

@property (nonatomic, strong) PGEmptyView *empty;

@end
