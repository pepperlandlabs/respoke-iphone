//
//  RSPKDetailViewController.h
//  Respoke
//
//  Created by Edmund Salvacion on 11/4/12.
//  Copyright (c) 2012 Pepperland Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RSPKDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
