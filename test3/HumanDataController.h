//  HumanDataController.h
//  test3

#import <Foundation/Foundation.h>

@class Human;

@interface HumanDataController : NSObject

@property (nonatomic, copy) NSMutableArray *masterHumanList;

- (NSUInteger)countOfList;
- (Human *)objectInListAtIndex:(NSUInteger)theIndex;
- (void)addHuman:(Human *)human;
@end
