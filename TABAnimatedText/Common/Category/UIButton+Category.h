//
//  UIButton+Category.h
//  Mine
//
//  Created by mac on 2018/11/26.
//  Copyright © 2018年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h> 
NS_ASSUME_NONNULL_BEGIN

@interface UIButton (Category)

//快速创建button
+ (UIButton *)buttonSuperView:(UIView *)superView ImgName:(NSString *)imgName Tag:(NSInteger)tag Target:(id)target Action:(SEL)action ControlEvents:(UIControlEvents)controlEvents;
//快速创建button，圆形
+ (UIButton *)buttonSuperView:(UIView *)superView ImgName:(NSString *)imgName Tag:(NSInteger)tag Target:(id)target Action:(SEL)action ControlEvents:(UIControlEvents)controlEvents CornerRadius:(float)cornerRadius MasksToBounds:(BOOL)masksToBounds;
//快速创建button，圆形,加载网络图片
+ (UIButton *)buttonSuperView:(UIView *)superView ImgUrl:(NSString *)imgUrl Tag:(NSInteger)tag Target:(id)target Action:(SEL)action ControlEvents:(UIControlEvents)controlEvents CornerRadius:(float)cornerRadius MasksToBounds:(BOOL)masksToBounds;
//快速创建button，有背景，圆角
+ (UIButton *)buttonSuperView:(UIView *)superView Tag:(NSInteger)tag Target:(id)target Action:(SEL)action ControlEvents:(UIControlEvents)controlEvents CornerRadius:(float)cornerRadius MasksToBounds:(BOOL)masksToBounds
                        Title:(NSString *)title State:(UIControlState)state BGColor:(UIColor *)bgColor Font:(CGFloat)font;
//快速创建button，带有正常和选中状态两种图片
+ (UIButton *)buttonSuperView:(UIView *)superView NormalImgName:(NSString *)normalImgName SelectImgName:(NSString *)selectImgName Tag:(NSInteger)tag Target:(id)target Action:(SEL)action ControlEvents:(UIControlEvents)controlEvents;
//快速创建button,有标题，标题自定义颜色，无图片无背景，
+ (UIButton *)buttonSuperView:(UIView *)superView Tag:(NSInteger)tag Target:(id)target Action:(SEL)action ControlEvents:(UIControlEvents)controlEvents Title:(NSString *)title TitleColor:(UIColor *)titleColor FontSize:(CGFloat)fontSize;
/** 快速创建button,有标题，标题自定义颜色大小，有圆角, 有正常和选中两种状态 **/
+ (UIButton *)buttonSuperView:(UIView *)superView Tag:(NSInteger)tag Target:(id)target Action:(SEL)action ControlEvents:(UIControlEvents)controlEvents Title:(NSString *)title SelectedTitle:(NSString *)selectedTitle TitleColor:(UIColor *)titleColor SelectedTitleColor:(UIColor *)selectedTitleColor FontSize:(CGFloat)fontSize FontName:(NSString *)fontName MasksToBounds:(BOOL)masksToBounds CornerRadius:(CGFloat)cornerRadius;
/** 快速创建button,有标题，标题自定义颜色大小，有圆角 **/
+ (UIButton *)buttonSuperView:(UIView *)superView Tag:(NSInteger)tag Target:(id)target Action:(SEL)action ControlEvents:(UIControlEvents)controlEvents Title:(NSString *)title TitleColor:(UIColor *)titleColor FontSize:(CGFloat)fontSize FontName:(NSString *)fontName MasksToBounds:(BOOL)masksToBounds CornerRadius:(CGFloat)cornerRadius BorderColor:(UIColor *)borderColor BorderWidth:(CGFloat)borderWidth;

/// 调整标题位置
- (void)adjustAtTitlePositon:(UIViewContentMode) position withSpacing: (CGFloat) spacing;

//加载网络图片
- (void)xr_setButtonImageWithUrl:(NSString *)urlStr;

@end

NS_ASSUME_NONNULL_END


@interface UIButton (LeeHitRect)

/**
 自定义响应边界 UIEdgeInsetsMake(-3, -4, -5, -6). 表示扩大
 例如： self.btn.hitEdgeInsets = UIEdgeInsetsMake(-3, -4, -5, -6);
 */
@property(nonatomic, assign) UIEdgeInsets hitEdgeInsets;


/**
 自定义响应边界 自定义的边界的范围 范围扩大3.0
 例如：self.btn.hitScale = 3.0;
 */
@property(nonatomic, assign) CGFloat hitScale;

/*
 自定义响应边界 自定义的宽度的范围 范围扩大3.0
 例如：self.btn.hitWidthScale = 3.0;
 */
@property(nonatomic, assign) CGFloat hitWidthScale;

/*
 自定义响应边界 自定义的高度的范围 范围扩大3.0
 例如：self.btn.hitHeightScale = 3.0;
 */
@property(nonatomic, assign) CGFloat hitHeightScale;


@end
