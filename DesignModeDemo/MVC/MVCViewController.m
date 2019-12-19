//
//  MVCViewController.m
//  DesignModeDemo
//
//  Created by allison on 2019/12/18.
//  Copyright © 2019 allison. All rights reserved.
//

#import "MVCViewController.h"
#import "MVCHeaderView.h"
#import "MVCModel.h"

@interface MVCViewController ()<MVCViewDelegate>

@end

@implementation MVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建view
     MVCHeaderView *headView = [[MVCHeaderView alloc] init];
     headView.frame = CGRectMake(100, 100, 200, 150);
     headView.mvcDelegate = self;
     [self.view addSubview:headView];
     
     // 加载模型数据
     MVCModel *model = [[MVCModel alloc] init];
     model.name = @"【MVC】翀鹰女孩";
     model.image = @"header";
     
     // 设置数据到view上
     headView.mvcModel = model;
}
#pragma mark - MJAppViewDelegate
- (void)mvcViewDidClick:(MVCHeaderView *)headView {
    NSLog(@"控制器监听到了appView的点击");
}

@end
