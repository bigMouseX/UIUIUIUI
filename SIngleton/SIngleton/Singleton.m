//
//  Singleton.m
//  SIngleton
//
//  Created by 夏楠 on 2023/5/7.
//

#import "Singleton.h"

@implementation Singleton
static id instance = nil;
+ (id)shaerInstance {
    if (!instance) {
        instance = [[Singleton alloc] init];
    }
    return instance;
}
@end
