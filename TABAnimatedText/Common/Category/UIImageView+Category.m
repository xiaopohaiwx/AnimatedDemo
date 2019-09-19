//
//  UIImageView+Category.m
//  Mine
//
//  Created by mac on 2018/11/26.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "UIImageView+Category.h"

@implementation UIImageView (Category)
/** 快速创建imageView，加图片 **/
+ (UIImageView *)imageViewSuperView:(UIView *)superView ImgName:(NSString *)imgName
{
    UIImageView *imgView = [[UIImageView alloc] init];
    imgView.image = [UIImage imageNamed:imgName];
    [superView addSubview:imgView];
    return imgView;
}
/** 快速创建imageView,有背景颜色，边框有弧度 **/ 
+ (UIImageView *)imageViewSuperView:(UIView *)superView BorderWidth:(float)borderWidth MasksToBounds:(BOOL)masksToBounds BorderColor:(UIColor *)borderColor CornerRadius:(NSInteger)cornerRadius BackgroundColor:(UIColor *)backgroundColor
{
    UIImageView *imgView = [[UIImageView alloc] init];
    imgView.layer.borderWidth = borderWidth;
    imgView.layer.masksToBounds = masksToBounds;
    imgView.layer.borderColor = borderColor.CGColor;
    imgView.layer.cornerRadius = cornerRadius;
    imgView.backgroundColor = backgroundColor;
    [superView addSubview:imgView];
    return imgView;
}

@end
