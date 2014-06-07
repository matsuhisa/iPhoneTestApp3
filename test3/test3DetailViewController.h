//  test3DetailViewController.h
//  test3

#import <UIKit/UIKit.h>

@class Human;

@interface test3DetailViewController : UITableViewController

@property (strong, nonatomic) Human *human;
@property (weak, nonatomic) IBOutlet UILabel *humanNameLabel;

@end
