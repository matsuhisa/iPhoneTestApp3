//  test3MasterViewController.m
//  test3

#import "test3MasterViewController.h"
#import "test3DetailViewController.h"
#import "HumanDataController.h"
#import "Human.h"

/*
@interface test3MasterViewController() {
}
@end
*/

@implementation test3MasterViewController

- (void)awakeFromNib
{
    NSLog(@"-----------");
    NSLog(@"Master awakeFromNib");
    NSLog(@"-----------");

    [super awakeFromNib];
    self.dataController = [[HumanDataController alloc] init];
}

- (void)viewDidLoad
{
    NSLog(@"-----------");
    NSLog(@"Master viewDidLoad");
    NSLog(@"-----------");
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table View
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return NO;
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataController countOfList];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"HumanCell";

    // セルを生成
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    Human *humanAtIndex = [self.dataController objectInListAtIndex:indexPath.row];

    // セルについての処理
    [[cell textLabel] setText:humanAtIndex.name];
    [[cell detailTextLabel] setText:@"詳細テキスト"];
    return cell;
}

// 値（humanオブジェクト）を詳細画面に送信
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"-----------");
    if ([[segue identifier] isEqualToString:@"ShowHumanDetails"]) {
    NSLog(@"ShowHumanDetails   ");
        test3DetailViewController *detaViewController = [segue destinationViewController];
        detaViewController.human = [self.dataController objectInListAtIndex:[self.tableView indexPathForSelectedRow].row];

    }
    NSLog(@"-----------");
}

@end
