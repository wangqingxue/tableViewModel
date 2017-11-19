//
//  BaseTableViewCell.m
//  MineTableView耦合性练习
//
//  Created by qingxue on 17/11/19.
//  Copyright © 2017年 qingxue. All rights reserved.
//

#import "BaseTableViewCell.h"

@interface BaseTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *baseImageView;

@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

@end

@implementation BaseTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
