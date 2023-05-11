//
//  FKUser.m
//  SIngleton
//
//  Created by 夏楠 on 2023/5/7.
//

#import "FKUser.h"

@implementation FKUser
- (id)init {
    if (self = [super init]) {
        self.name = @"劳大";
        self.age = 81;
    }
    return self;
}
@end
