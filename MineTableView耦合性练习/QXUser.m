//
//  QXUser.m
//  MineTableView耦合性练习
//
//  Created by qingxue on 17/11/20.
//  Copyright © 2017年 qingxue. All rights reserved.
//

#import "QXUser.h"

@implementation QXUser

+ (instancetype)sharedQXUser{
    static QXUser *qxUser;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        qxUser = [[QXUser alloc]init];
    });
    return qxUser;
}

@end
