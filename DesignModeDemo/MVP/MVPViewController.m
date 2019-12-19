//
//  MVPViewController.m
//  DesignModeDemo
//
//  Created by allison on 2019/12/18.
//  Copyright © 2019 allison. All rights reserved.
//

#import "MVPViewController.h"
#import "MVPHeaderPresenter.h"

@interface MVPViewController ()
@property (strong, nonatomic) MVPHeaderPresenter *presenter;
@end

@implementation MVPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.presenter = [[MVPHeaderPresenter alloc] initWithController:self];
}


@end
