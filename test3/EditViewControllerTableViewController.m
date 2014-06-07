//  EditViewControllerTableViewController.m
//  test3

#import "EditViewControllerTableViewController.h"

@interface EditViewControllerTableViewController ()
@end

@implementation EditViewControllerTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if ( textField == self.EditNameInput) {
        [textField resignFirstResponder];
    }
    return YES;
}

- (void)configureView
{
    NSLog(@"-----------");
    NSLog(@"configureView");
    NSLog(@"-----------");
    
    self.EditNameInput.text = @"編集の名前";

}
@end
