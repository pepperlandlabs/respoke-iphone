//
//  RSPKRightBarButtonItem.m
//  Respoke
//
//  Created by Edmund Salvacion on 12/9/12.
//  Copyright (c) 2012 Pepperland Labs. All rights reserved.
//

#import "RSPKRightBarButtonItem.h"

@implementation RSPKRightBarButtonItem

- (id)initWithCoder:(NSCoder *)decoder {
    self = [super initWithCoder:decoder];
    if (self) {
        [self customize];
    }
    return self; 
}

- (void)customize {
    //[self applyTranslucentBackground];
    UIImage *quoteButtonBG = [UIImage imageNamed:@"QuoteButtonBG.png"];
    UIImage *quoteButtonBGPress = [UIImage imageNamed:@"QuoteButtonBGPress.png"];
    UIButton *quoteButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [quoteButton addTarget:self action:self.action forControlEvents:UIControlEventTouchDown];
    
    [quoteButton setBackgroundImage:quoteButtonBG forState:UIControlStateNormal];
    [quoteButton setBackgroundImage:quoteButtonBGPress forState:UIControlStateHighlighted];
    
    const CGFloat BarButtonOffset = 5.0f;
    [quoteButton setFrame:CGRectMake(BarButtonOffset, 0, quoteButtonBG.size.width, quoteButtonBG.size.height)];
    
    UIView *containerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, quoteButtonBG.size.width, quoteButtonBG.size.height)];
    [containerView addSubview:quoteButton];
    //[containerView add]
    //self.image = quoteButtonBG;
    //self.customView = containerView;
    //[self setCustomView:containerView];
    //[self setBackgroundImage:quoteButtonBG forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    //[self setBackgroundImage:quoteButtonBGPress forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
    //self.width = quoteButtonBG.size.width;
    self.width = 2.0;
    [self setWidth:5.0];
    //self.
    //[containerView set]
    //[self setCustomView:containerView];
}

@end
