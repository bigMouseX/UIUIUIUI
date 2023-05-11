//
//  main.m
//  SIngleton
//
//  Created by 夏楠 on 2023/5/7.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Singleton *a = [Singleton shaerInstance];
//        NSLog(@"%@", a);
        Singleton *b = [[Singleton alloc] init];
        NSLog(@"%d", b == a);
    }
    return 0;
}
