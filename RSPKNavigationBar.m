//
//  RSPKNavigationBar.m
//  Respoke
//
//  Created by Edmund Salvacion on 11/4/12.
//  Copyright (c) 2012 Pepperland Labs. All rights reserved.
//

#import "RSPKNavigationBar.h"

@implementation RSPKNavigationBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self customize];
    }
    return self;
}

- (void)customize {
    UIImage *navBarBg = [UIImage imageNamed:@"NavBar.png"];
    [self setBackgroundImage:navBarBg forBarMetrics:UIBarMetricsDefault];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
