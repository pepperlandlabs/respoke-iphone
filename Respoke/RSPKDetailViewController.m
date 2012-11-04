//
//  RSPKDetailViewController.m
//  Respoke
//
//  Created by Edmund Salvacion on 11/4/12.
//  Copyright (c) 2012 Pepperland Labs. All rights reserved.
//

#import "RSPKDetailViewController.h"

@interface RSPKDetailViewController ()
- (void)configureView;
@end

@implementation RSPKDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
