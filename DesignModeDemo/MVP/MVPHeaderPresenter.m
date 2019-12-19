//
//  MVPHeaderPresenter.m
//  DesignModeDemo
//
//  Created by allison on 2019/12/18.
//  Copyright © 2019 allison. All rights reserved.
//

#import "MVPHeaderPresenter.h"
#import "MVPHeaderView.h"
#import "MVPModel.h"

@interface MVPHeaderPresenter() <MVPViewDelegate>
@property (weak, nonatomic) UIViewController *controller;
@end


@implementation MVPHeaderPresenter
- (instancetype)initWithController:(UIViewController *)controller {
     if (self = [super init]) {
            self.controller = controller;
            
            // 创建View
            MVPHeaderView *headView = [[MVPHeaderView alloc] init];
            headView.frame = CGRectMake(100, 100, 200, 150);
            headView.mvpDelegate = self;
            [controller.view addSubview:headView];
            
            // 加载模型数据
            MVPModel *model = [[MVPModel alloc] init];
            model.name = @"【MVP】翀鹰女孩";
            model.image = @"header";
            
            // 赋值数据
            [headView setName:model.name andImage:model.image];
        }
        return self;
}

- (void)mvpViewDidClick:(MVPHeaderView *)headView {
     NSLog(@"mvp 监听了 appView 的点击");
}
@end
