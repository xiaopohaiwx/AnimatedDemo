//
//  UILabel+Category.h
//  Mine
//
//  Created by mac on 2018/11/26.
//  Copyright © 2018年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h> 
NS_ASSUME_NONNULL_BEGIN

@interface UILabel (Category)

//快速创建label
+ (UILabel *)labelSuperView:(UIView *)superView Lines:(NSInteger)lines Str:(NSString *)str FontName:(NSString *)fontName Size:(NSInteger)size Red:(NSInteger)red Green:(NSInteger)green Blue:(NSInteger)blue Alpha:(float)alpha TextAlignment:(NSTextAlignment)textAlignment;
//快速创建label，有背景颜色, 有弧度
+ (UILabel *)labelSuperView:(UIView *)superView Lines:(NSInteger)lines Str:(NSString *)str FontName:(NSString *)fontName Size:(NSInteger)size Red:(NSInteger)red Green:(NSInteger)green Blue:(NSInteger)blue Alpha:(float)alpha TextAlignment:(NSTextAlignment)textAlignment BGRed:(NSInteger)bgRed BGGreen:(NSInteger)bgGreen BGBlue:(NSInteger)bgBlue BGAlpha:(NSInteger)bgAlpha MasksToBounds:(BOOL)masksToBounds CornerRadius:(float)cornerRadius;
//快速创建label,一行字体自适应
+ (UILabel *)labelSuperView:(UIView *)superView Lines:(NSInteger)lines Str:(NSString *)str FontName:(NSString *)fontName Size:(NSInteger)size Red:(NSInteger)red Green:(NSInteger)green Blue:(NSInteger)blue Alpha:(float)alpha TextAlignment:(NSTextAlignment)textAlignment AdjustsFontSizeToFitWidth:(BOOL)adjustsFontSizeToFitWidth;
//快速创建label,用颜色宏定义字体颜色
+ (UILabel *)labelSuperView:(UIView *)superView Lines:(NSInteger)lines Str:(NSString *)str FontName:(NSString *)fontName Size:(NSInteger)size TextAlignment:(NSTextAlignment)textAlignment TextColor:(UIColor *)textcolor;
/** 快速创建label,用颜色宏定义字体颜色,有字体类型 **/
+ (UILabel *)labelSuperView:(UIView *)superView Lines:(NSInteger)lines Str:(NSString *)str FontName:(NSString *)fontName FontSize:(NSInteger)fontsize TextAlignment:(NSTextAlignment)textAlignment TextColor:(UIColor *)textcolor;
/** 快速创建label,有背景，边框有弧度，字体颜色有颜色 **/
+ (UILabel *)labelSuperView:(UIView *)superView Lines:(NSInteger)lines Str:(NSString *)str FontName:(NSString *)fontName FontSize:(NSInteger)fontsize TextAlignment:(NSTextAlignment)textAlignment TextColor:(UIColor *)textcolor BGColor:(UIColor *)bgColor MasksToBounds:(BOOL)masksToBounds CornerRadius:(CGFloat)cornerRadius;
/** 根据内容得到label高度 **/
+ (CGFloat)getHeightByWidth:(CGFloat)width title:(NSString *)title font:(UIFont*)font;
/** 根据内容得到label宽度 **/
+ (CGFloat)getWidthWithTitle:(NSString *)title font:(UIFont *)font;

@end

NS_ASSUME_NONNULL_END
