//
//  MVCHeaderView.h
//  DesignModeDemo
//
//  Created by allison on 2019/12/18.
//  Copyright © 2019 allison. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class MVCHeaderView,MVCModel;
@protocol MVCViewDelegate <NSObject>
@optional
-(void)mvcViewDidClick:(MVCHeaderView*)headView;
@end

@interface MVCHeaderView : UIView
@property (nonatomic, strong) MVCModel  * mvcModel;
@property (nonatomic, weak) id<MVCViewDelegate> mvcDelegate;
@end

NS_ASSUME_NONNULL_END
