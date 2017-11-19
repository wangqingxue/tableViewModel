//
//  MineDataArrayManager.h
//  MineTableView耦合性练习
//
//  Created by qingxue on 17/11/20.
//  Copyright © 2017年 qingxue. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MineDataArrayManager : NSObject

@property (nonatomic, strong) NSMutableArray *dataArray;

- (void)getDataWithLogin:(BOOL)isLogin;

@end
