//  test3DetailViewController.m
//  test3

#import "test3DetailViewController.h"
#import "EditViewControllerTableViewController.h"
#import "Human.h"

@interface test3DetailViewController ()
- (void)configureView;
@end

@implementation test3DetailViewController

#pragma mark - Managing the detail item

- (void)setHuman:(Human *)newHuman {
    if(_human != newHuman) {
        _human = newHuman;
        
        [self configureView];
    }
}

// 描画
- (void)configureView
{
    Human *theHuman = self.human;
    if(theHuman) {
        self.humanNameLabel.text = theHuman.name;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self configureView];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"-----------");
    if ([[segue identifier] isEqualToString:@"EditHumanView"]) {
        NSLog(@"segue -> EditHumanView");
        EditViewControllerTableViewController *editViewController = [segue destinationViewController];
        editViewController.human = self.human;
/*
        test3DetailViewController *detaViewController = [segue destinationViewController];
        detaViewController.human = [self.dataController objectInListAtIndex:[self.tableView indexPathForSelectedRow].row];
*/        
    }
    NSLog(@"-----------");
}

@end
