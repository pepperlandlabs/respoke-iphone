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
    UIImage *quoteButtonBG = [UIImage imageNamed:@"RightBarButton.png"];
    UIImage *quoteButtonBGPress = [UIImage imageNamed:@"RightBarButtonPress.png"];
    
    [self setBackgroundImage:quoteButtonBG forState:UIControlStateNormal];
    [self setBackgroundImage:quoteButtonBGPress forState:UIControlStateHighlighted];
    
    const CGFloat BarButtonOffset = 5.0f;
    [self setFrame:CGRectMake(BarButtonOffset, 0, quoteButtonBG.size.width, quoteButtonBG.size.height)];
}

@end
