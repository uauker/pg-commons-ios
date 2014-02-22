//
//  PGLoadingView.h
//  PGCommons
//
//  Created by Uauker on 2/22/14.
//  Copyright (c) 2014 Uauker Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PGLoadingViewDelegate <NSObject>

@required
- (UIView *)viewToLoading;

@optional
- (NSString *)nibToLoading;

@end



@interface PGLoadingView : UIView


@property (nonatomic, weak) id<PGLoadingViewDelegate> delegate;

@property (nonatomic, strong) UIView *view;
@property (weak, nonatomic) UIActivityIndicatorView *indicator;
@property (weak, nonatomic) UILabel *label;


- (id)initWithDelegate:(id<PGLoadingViewDelegate>) delegate;

- (void)show;
- (void)hide;

@end
