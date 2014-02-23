//
//  PGEmptyView.h
//  PGCommons
//
//  Created by Uauker on 2/22/14.
//  Copyright (c) 2014 Uauker Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PGEmptyViewDelegate <NSObject>

@required
- (UIView *)viewToLoading;

@optional
- (NSString *)nibToLoading;

@end


@interface PGEmptyView : UIView

@property (nonatomic, weak) id<PGEmptyViewDelegate> delegate;

@property (nonatomic, strong) UIView *view;


- (id)initWithDelegate:(id<PGEmptyViewDelegate>) delegate;

- (void)show;
- (void)hide;

@end
