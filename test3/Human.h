//  Human.h
//  test3

#import <Foundation/Foundation.h>

@interface Human : NSObject
@property (nonatomic, copy) NSString *name;

-(id)initWithName:(NSString *)name;
@end
