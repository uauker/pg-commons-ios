//
//  PGLoadingView.m
//  PGCommons
//
//  Created by Uauker on 2/22/14.
//  Copyright (c) 2014 Uauker Inc. All rights reserved.
//

#import "PGLoadingView.h"

@implementation PGLoadingView

static NSString * const PGNibName = @"PGLoadingView";

#pragma public

- (id)initWithDelegate:(id<PGLoadingViewDelegate>) delegate {
    self = [super init];
    
    if (self) {
        self.delegate = delegate;
        
        [self initializeView];
    }
    
    return self;
}

- (void)show {
    self.label = (UILabel *)[self.view viewWithTag:1];
    self.label.text = NSLocalizedString(@"Carregando...", nil);    
    
    self.indicator = (UIActivityIndicatorView *)[self.view viewWithTag:2];
    [self.indicator startAnimating];
    
    [[self.delegate viewToLoading] addSubview:self.view];
}

- (void)hide {
    [self.indicator stopAnimating];
    
    [self.view removeFromSuperview];
}


#pragma private

- (void)initializeView {
    NSString *xibName = [self.delegate respondsToSelector:@selector(nibToLoading)] ? [self.delegate nibToLoading] : PGNibName;
    
    self.view = [[[NSBundle mainBundle] loadNibNamed:xibName owner:self options:nil] objectAtIndex:0];
}

@end
