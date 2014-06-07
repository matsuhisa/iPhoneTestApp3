//  HumanDataController.m
//  test3

#import "HumanDataController.h"
#import "Human.h"

@interface HumanDataController()
- (void)initializeDefaultDataList;
@end

@implementation HumanDataController

// 初期データー用意
- (void)initializeDefaultDataList {
    NSLog(@"-----------");
    NSLog(@"DC initializeDefaultDataList");

    NSMutableArray *humanList = [[NSMutableArray alloc] init];
    self.masterHumanList = humanList;
    Human *human;
    human = [[Human alloc] initWithName:@"名前です"];
    
    [self addHuman:human];
    NSLog(@"-----------");
}

//
- (void)setMasterHumanList:(NSMutableArray *)newList {
    NSLog(@"-----------");
    NSLog(@"DC setMasterHumanList");
    NSLog(@"-----------");
    if(_masterHumanList != newList)
    {
        _masterHumanList = [newList mutableCopy];
    }
}

// 初期化
- (id)init {
    NSLog(@"-----------");
    NSLog(@"DC init");
    NSLog(@"-----------");
    if(self = [super init]) {
        [self initializeDefaultDataList];
        return self;
    }
    return nil;
}

//
- (NSUInteger)countOfList {
    NSLog(@"-----------");
    NSLog(@"DC countOfList");
    NSLog(@"-----------");
    return [self.masterHumanList count];
}

// 追加処理
- (void)addHuman:(Human *)human {
    NSLog(@"-----------");
    NSLog(@"DC addHuman");
    [self.masterHumanList addObject:human];
    NSLog(@"-----------");
}

// 指定された番号のオブジェクトを返す
- (Human *)objectInListAtIndex:(NSUInteger)theIndex {
    NSLog(@"-----------");
    NSLog(@"DC objectInListAtIndex");
    NSLog(@"-----------");
    return [self.masterHumanList objectAtIndex:theIndex];
}

@end
