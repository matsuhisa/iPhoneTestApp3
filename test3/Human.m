//  Human.m
//  test3

#import "Human.h"

@implementation Human

-(id)initWithName:(NSString *)name {
    NSLog(@"-----------");
    self = [super init];
    if(self){
        _name = name;
        return self;
    }
    NSLog(@"-----------");
    return nil;
}

@end
