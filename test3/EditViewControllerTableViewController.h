//  EditViewControllerTableViewController.h
//  test3

#import <UIKit/UIKit.h>

@class Human;

@interface EditViewControllerTableViewController : UITableViewController
<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *EditNameInput;
@property (strong, nonatomic) Human *human;

- (IBAction)EditCancel:(UIBarButtonItem *)sender;
- (IBAction)EditDone:(UIBarButtonItem *)sender;

@end
