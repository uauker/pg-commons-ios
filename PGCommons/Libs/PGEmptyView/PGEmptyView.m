//
//  PGEmptyView.m
//  PGCommons
//
//  Created by Uauker on 2/22/14.
//  Copyright (c) 2014 Uauker Inc. All rights reserved.
//

#import "PGEmptyView.h"

@implementation PGEmptyView

static NSString * const PGNibName = @"PGEmptyView";

#pragma public

- (id)initWithDelegate:(id<PGEmptyViewDelegate>) delegate {
    self = [super init];
    
    if (self) {
        self.delegate = delegate;
        
        [self initializeView];
    }
    
    return self;
}

- (void)show {
    [[self.delegate viewToLoading] addSubview:self.view];
    
    UILabel *label = (UILabel *)[self.view viewWithTag:1];
    label.text = @"Nada foi encontrado, tente novamente mais tarde. Nada foi encontrado, tente novamente mais tarde. Nada foi encontrado, tente novamente mais tarde. Nada foi encontrado, tente novamente mais tarde. ";
}

- (void)hide {
    [self.view removeFromSuperview];
}


#pragma private

- (void)initializeView {
    NSString *xibName = [self.delegate respondsToSelector:@selector(nibToLoading)] ? [self.delegate nibToLoading] : PGNibName;
    
    self.view = [[[NSBundle mainBundle] loadNibNamed:xibName owner:self options:nil] objectAtIndex:0];
}

@end
