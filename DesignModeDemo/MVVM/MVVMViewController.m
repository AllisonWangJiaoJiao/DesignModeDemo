//
//  MVVMViewController.m
//  DesignModeDemo
//
//  Created by allison on 2019/12/18.
//  Copyright © 2019 allison. All rights reserved.
//

#import "MVVMViewController.h"
#import "MVVMViewModel.h"

@interface MVVMViewController ()
@property (strong, nonatomic) MVVMViewModel *viewModel;

@end

@implementation MVVMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.viewModel = [[MVVMViewModel alloc] initWithController:self];
}

@end
