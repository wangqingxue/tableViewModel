//
//  ViewController.m
//  MineTableView耦合性练习
//
//  Created by qingxue on 17/11/19.
//  Copyright © 2017年 qingxue. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "BaseTableViewCell.h"
#import "MineDataArrayManager.h"
#import "MineDataArrayManager.h"

#define BaseTableViewCellIdentifier @"baseTableViewCell"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UIButton *pushController;
@property (weak, nonatomic) IBOutlet UITableView *baseTableView;
@property (nonatomic, strong) MineDataArrayManager *mineArrayManager;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self regisetTableViewCell];
    self.baseTableView.backgroundColor = [UIColor redColor];
    self.navigationController.navigationBar.translucent = NO;
    [self updateDataArray];
}

- (void)updateDataArray{
    [self.mineArrayManager getDataWithLogin:YES];
}

- (IBAction)pushController:(id)sender {
    SecondViewController *secondController = [[SecondViewController alloc]init];
    [self.navigationController pushViewController:secondController animated:YES];
}

#pragma mark --updateMineArray
- (MineDataArrayManager *)mineArrayManager{
    if (!_mineArrayManager){
        _mineArrayManager = [[MineDataArrayManager alloc]init];
    }
    return _mineArrayManager;
}

#pragma mark --TableViewDelegate
- (void)regisetTableViewCell{
    [self.baseTableView registerNib:[UINib nibWithNibName:@"BaseTableViewCell" bundle:nil] forCellReuseIdentifier:BaseTableViewCellIdentifier];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BaseTableViewCell *baseCell = [self.baseTableView dequeueReusableCellWithIdentifier:BaseTableViewCellIdentifier];
    
    return baseCell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
