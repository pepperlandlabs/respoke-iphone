//
//  RSPKMasterViewController.m
//  Respoke
//
//  Created by Edmund Salvacion on 11/4/12.
//  Copyright (c) 2012 Pepperland Labs. All rights reserved.
//

#import "RSPKMasterViewController.h"

#import "RSPKDetailViewController.h"

@interface RSPKMasterViewController () {
    NSMutableArray *_objects;
}
@end

@implementation RSPKMasterViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    /*
	// Do any additional setup after loading the view, typically from a nib.
    //self.navigationItem.leftBarButtonItem = self.editButtonItem;

    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    
    self.navigationItem.rightBarButtonItem = addButton;
     */
    
    //self.navigationItem.titleView = [self titleView];
    self.navigationItem.titleView = [self titleView];
    //self.navigationItem.rightBarButtonItem = [self quoteButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)insertNewObject:(id)sender
{
    if (!_objects) {
        _objects = [[NSMutableArray alloc] init];
    }
    [_objects insertObject:[NSDate date] atIndex:0];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

- (UIBarButtonItem *)quoteButton {
    UIImage *quoteButtonBG = [UIImage imageNamed:@"QuoteButtonBG.png"];
    UIImage *quoteIcon = [UIImage imageNamed:@"QuoteIcon.png"];
    UIImage *quoteButtonBGPress = [UIImage imageNamed:@"QuoteButtonBGPress.png"];
    UIButton *quoteButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [quoteButton setBackgroundImage:quoteButtonBG forState:UIControlStateNormal];
    [quoteButton setBackgroundImage:quoteButtonBGPress forState:UIControlStateHighlighted];
    [quoteButton setImage:quoteIcon forState:UIControlStateNormal];
    
    const CGFloat BarButtonOffset = 5.0f;
    [quoteButton setFrame:CGRectMake(BarButtonOffset, 0, quoteButtonBG.size.width, quoteButtonBG.size.height)];
    
    UIView *containerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, quoteButtonBG.size.width, quoteButtonBG.size.height)];
    [containerView addSubview:quoteButton];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:containerView];
    return item;
}

- (UIImageView *)titleView {
    UIImage *logo = [UIImage imageNamed:@"RespokeLogo.png"];
    UIImageView *logoView = [[UIImageView alloc] initWithImage:logo];

    return logoView;
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _objects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    NSDate *object = _objects[indexPath.row];
    cell.textLabel.text = [object description];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [_objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSDate *object = _objects[indexPath.row];
        [[segue destinationViewController] setDetailItem:object];
    }
}

@end
