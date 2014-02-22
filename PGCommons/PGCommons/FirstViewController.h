//
//  FirstViewController.h
//  PGCommons
//
//  Created by Uauker on 2/22/14.
//  Copyright (c) 2014 Uauker Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PGLoadingView.h"

@interface FirstViewController : UIViewController <PGLoadingViewDelegate>

@property (nonatomic, strong) PGLoadingView *loading;

@end
