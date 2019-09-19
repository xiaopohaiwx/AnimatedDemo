//
//  BaseTableViewCell.h
//  TABAnimatedText
//
//  Created by wx on 2019/8/30.
//  Copyright © 2019年 wx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseTableViewCell : UITableViewCell

@property (nonatomic, strong) UIImageView *headImgView;
@property (nonatomic, strong) UILabel *contentLabel;
- (void)setViewWithModel:(BaseModel *)mode;

@end

NS_ASSUME_NONNULL_END
