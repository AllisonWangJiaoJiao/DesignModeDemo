//
//  MVPHeaderView.m
//  DesignModeDemo
//
//  Created by allison on 2019/12/18.
//  Copyright © 2019 allison. All rights reserved.
//

#import "MVPHeaderView.h"
#import "MVPModel.h"

@interface MVPHeaderView()
@property (weak, nonatomic) UIImageView *iconView;
@property (weak, nonatomic) UILabel *nameLabel;
@end

@implementation MVPHeaderView

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

- (void)setName:(NSString *)name andImage:(NSString *)image {
     _iconView.image = [UIImage imageNamed:image];
     _nameLabel.text = name;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if ([self.mvpDelegate respondsToSelector:@selector(mvpViewDidClick:)]) {
        [self.mvpDelegate mvpViewDidClick:self];
    }
}

@end
