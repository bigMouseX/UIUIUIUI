//
//  FKUser.h
//  SIngleton
//
//  Created by 夏楠 on 2023/5/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FKUser : NSObject
@property (nonatomic, assign)int age;
@property (nonatomic, copy)NSString *name;
- (id)init;
@end

NS_ASSUME_NONNULL_END
