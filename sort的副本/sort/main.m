//
//  main.m
//  sort
//
//  Created by 夏楠 on 2023/4/29.
//

#import <Foundation/Foundation.h>

//首先我们需要定义比较函数，根据两个对象的intValue进行比较
//NSInteger相当于int
NSInteger intSort(id num1, id num2, void *context) {
    int v1 = [num1 intValue];
    int v2 = [num2 intValue];
    if (v1 < v2)
        return NSOrderedAscending;
    else if (v1 > v2)
        return NSOrderedDescending;
    else
        return NSOrderedSame;
}
    
int main(int argc, const char * argv[]) {
    NSArray *arr1 = [NSArray arrayWithObjects:@"object-c", @"c", @"c++", @"Ruby", @"perl", @"python", nil];
    arr1 = [arr1 sortedArrayUsingSelector:@selector(compare:)];
    NSLog(@"%@", arr1);
    NSArray *arr2 = [NSArray arrayWithObjects:
                     [NSNumber numberWithInt:20],
                     [NSNumber numberWithInt:12],
                     [NSNumber numberWithInt:-1],
                     [NSNumber numberWithInt:11],
                     [NSNumber numberWithInt:60],
                     nil];
    arr2 = [arr2 sortedArrayUsingFunction:intSort context:nil];
    NSLog(@"%@", arr2);
    //使用代码块对集合元素进行排序
    NSArray *arr3 = [arr2 sortedArrayUsingComparator:^(id obj1, id obj2) {
        //设该代码块就是根据集合元素的intValue进行比较
        if ([obj1 intValue] > [obj2 intValue])
            return NSOrderedDescending;
        if ([obj1 intValue] < [obj2 intValue])
            return NSOrderedAscending;
        return NSOrderedSame;
    }];
    NSLog(@"%@", arr3);
    return 0;
}
