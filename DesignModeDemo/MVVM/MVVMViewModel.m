//
//  MVVMViewModel.m
//  DesignModeDemo
//
//  Created by allison on 2019/12/19.
//  Copyright © 2019 allison. All rights reserved.
//

#import "MVVMViewModel.h"
#import "MVVMHeaderView.h"
#import "MVVMModel.h"

@interface MVVMViewModel() <MVVMViewDelegate>
@property (weak, nonatomic) UIViewController *controller;
@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *image;
@end


@implementation MVVMViewModel

- (instancetype)initWithController:(UIViewController *)controller {
    if (self = [super init]) {
        self.controller = controller;
        
        // 创建View
        MVVMHeaderView *headView = [[MVVMHeaderView alloc] init];
        headView.frame = CGRectMake(100, 100, 200, 150);
        headView.mvvmModel = self;
        headView.mvvmDelegate = self;
        [controller.view addSubview:headView];
        
        // 加载模型数据
        MVVMModel *model = [[MVVMModel alloc] init];
        model.name = @"【MVVM】翀鹰女孩";
        model.image = @"header";
        self.name = model.name;
        self.image = model.image;
    }
    return self;
}

#pragma mark - MJAppViewDelegate
- (void)mvvmViewDidClick:(MVVMHeaderView *)appView {
    NSLog(@"viewModel 监听了 appView 的点击");
    self.name = @"变化中的【mvvm】";
    self.image =  @"header";
}

@end
