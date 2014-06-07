//  EditViewControllerTableViewController.m
//  test3

#import "EditViewControllerTableViewController.h"
#import "Human.h"

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

- (void)setHuman:(Human *)newHuman {
    if(_human != newHuman) {
        _human = newHuman;
        [self configureView];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}



- (void)configureView
{
    NSLog(@"-----------");
    NSLog(@"configureView");
    NSLog(@"-----------");
    Human *theHuman = self.human;
    
    self.EditNameInput.text = theHuman.name;
    //self.EditNameInput.text = @"編集の名前";
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if ( textField == self.EditNameInput) {
        [textField resignFirstResponder];
    }
    return YES;
}
@end
