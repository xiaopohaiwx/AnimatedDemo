//
//  UIView+Category.m
//  Mine
//
//  Created by mac on 2018/11/26.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "UIView+Category.h"

@implementation UIView (Category)
/** 快速创建view **/
+ (UIView *)viewSuperView:(UIView *)superView BGColor:(UIColor *)bgColor MasksToBounds:(BOOL)masksToBounds CornerRadius:(NSInteger)cornerRadius
{
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = bgColor;
    view.layer.masksToBounds = masksToBounds;
    view.layer.cornerRadius = cornerRadius;
    [superView addSubview:view];
    return view;
}

@end
