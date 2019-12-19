//
//  MVVMHeaderView.m
//  DesignModeDemo
//
//  Created by allison on 2019/12/19.
//  Copyright © 2019 allison. All rights reserved.
//

#import "MVVMHeaderView.h"
#import "NSObject+FBKVOController.h"

@interface MVVMHeaderView()
@property (weak, nonatomic) UIImageView *iconView;
@property (weak, nonatomic) UILabel *nameLabel;
@end

@implementation MVVMHeaderView

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

- (void)setMvvmModel:(MVVMViewModel *)mvvmModel {
    _mvvmModel = mvvmModel;
    
    __weak typeof(self) waekSelf = self;
    [self.KVOController observe:mvvmModel keyPath:@"name" options:NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSKeyValueChangeKey,id> * _Nonnull change) {
        waekSelf.nameLabel.text = change[NSKeyValueChangeNewKey];
    }];
    
    [self.KVOController observe:mvvmModel keyPath:@"image" options:NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSKeyValueChangeKey,id> * _Nonnull change) {
        waekSelf.iconView.image = [UIImage imageNamed:change[NSKeyValueChangeNewKey]];
    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if ([self.mvvmDelegate respondsToSelector:@selector(mvvmViewDidClick:)]) {
        [self.mvvmDelegate mvvmViewDidClick:self];
    }
}

@end
