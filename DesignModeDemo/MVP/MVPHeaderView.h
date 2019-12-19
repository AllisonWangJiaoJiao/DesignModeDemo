//
//  MVPHeaderView.h
//  DesignModeDemo
//
//  Created by allison on 2019/12/18.
//  Copyright © 2019 allison. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class MVPHeaderView;
@protocol MVPViewDelegate <NSObject>
@optional
-(void)mvpViewDidClick:(MVPHeaderView*)headView;

@end

@interface MVPHeaderView : UIView
- (void)setName:(NSString *)name andImage:(NSString *)image;
@property (nonatomic, weak) id<MVPViewDelegate> mvpDelegate;
@end

NS_ASSUME_NONNULL_END
