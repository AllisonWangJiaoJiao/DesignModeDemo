//
//  MVCHeaderView.m
//  DesignModeDemo
//
//  Created by allison on 2019/12/18.
//  Copyright © 2019 allison. All rights reserved.
//

#import "MVCHeaderView.h"
#import "MVCModel.h"

@interface MVCHeaderView()
@property (weak, nonatomic) UIImageView *iconView;
@property (weak, nonatomic) UILabel *nameLabel;
@end

@implementation MVCHeaderView
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        UIImageView *iconView = [[UIImageView alloc] init];
        iconView.frame = CGRectMake(50, 0, 100, 100);
        [self addSubview:iconView];
        _iconView = iconView;
        
        UILabel *nameLabel = [[UILabel alloc] init];
        nameLabel.frame = CGRectMake(0, 100, 200, 30);
        nameLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:nameLabel];
        _nameLabel = nameLabel;
    }
    return self;
}

- (void)setMvcModel:(MVCModel *)mvcModel {
    _mvcModel = mvcModel;
    self.iconView.image = [UIImage imageNamed:mvcModel.image];
    self.nameLabel.text = mvcModel.name;
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if ([self.mvcDelegate respondsToSelector:@selector(mvcViewDidClick:)]) {
        [self.mvcDelegate mvcViewDidClick:self];
    }
}


@end
