//  test3DetailViewController.m
//  test3

#import "test3DetailViewController.h"
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
/*
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
*/
@end
