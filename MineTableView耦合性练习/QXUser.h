//
//  QXUser.h
//  MineTableView耦合性练习
//
//  Created by qingxue on 17/11/20.
//  Copyright © 2017年 qingxue. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QXUser : NSObject

@property (nonatomic, copy) NSString *userToken;

+ (instancetype)sharedQXUser;

@end
