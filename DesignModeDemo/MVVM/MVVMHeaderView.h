//
//  MVVMHeaderView.h
//  DesignModeDemo
//
//  Created by allison on 2019/12/19.
//  Copyright © 2019 allison. All rights reserved.
//

#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN
@class MVVMViewModel,MVVMHeaderView;
@protocol MVVMViewDelegate <NSObject>
@optional
-(void)mvvmViewDidClick:(MVVMHeaderView*)headView;
@end

@interface MVVMHeaderView : UIView
@property (weak, nonatomic) MVVMViewModel *mvvmModel;
@property (weak, nonatomic) id<MVVMViewDelegate> mvvmDelegate;
@end

NS_ASSUME_NONNULL_END
