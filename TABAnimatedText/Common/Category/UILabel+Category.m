//
//  UILabel+Category.m
//  Mine
//
//  Created by mac on 2018/11/26.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "UILabel+Category.h"

@implementation UILabel (Category)
/** 快速创建label **/
+ (UILabel *)labelSuperView:(UIView *)superView Lines:(NSInteger)lines Str:(NSString *)str FontName:(NSString *)fontName Size:(NSInteger)size Red:(NSInteger)red Green:(NSInteger)green Blue:(NSInteger)blue Alpha:(float)alpha TextAlignment:(NSTextAlignment)textAlignment
{
    UILabel *label = [[UILabel alloc] init];
    label.numberOfLines = lines;
    //富文本属性
    if(str.length == 0)
    {
        label.text = str;
    }
    else
    {
        NSMutableAttributedString *attributed = [[NSMutableAttributedString alloc] initWithString:str attributes:@{NSFontAttributeName:[UIFont fontWithName:fontName size:size], NSForegroundColorAttributeName:[UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha]}];
        label.attributedText = attributed;
    }
    label.textAlignment = textAlignment;
    [superView addSubview:label];
    return label;
}
/** 快速创建label，有背景颜色, 有弧度 **/
+ (UILabel *)labelSuperView:(UIView *)superView Lines:(NSInteger)lines Str:(NSString *)str FontName:(NSString *)fontName Size:(NSInteger)size Red:(NSInteger)red Green:(NSInteger)green Blue:(NSInteger)blue Alpha:(float)alpha TextAlignment:(NSTextAlignment)textAlignment BGRed:(NSInteger)bgRed BGGreen:(NSInteger)bgGreen BGBlue:(NSInteger)bgBlue BGAlpha:(NSInteger)bgAlpha MasksToBounds:(BOOL)masksToBounds CornerRadius:(float)cornerRadius
{
    UILabel *label = [[UILabel alloc] init];
    label.numberOfLines = lines;
    //富文本属性
    NSMutableAttributedString *attributed = [[NSMutableAttributedString alloc] initWithString:str attributes:@{NSFontAttributeName:[UIFont fontWithName:fontName size:size], NSForegroundColorAttributeName:[UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha]}];
    label.attributedText = attributed;
    label.textAlignment = textAlignment;
    label.backgroundColor = [UIColor colorWithRed:bgRed/255.0 green:bgGreen/255.0 blue:bgBlue/255.0 alpha:bgAlpha];
    label.layer.masksToBounds = masksToBounds;
    label.layer.cornerRadius = cornerRadius;
    [superView addSubview:label];
    return label;
}
/** 快速创建label,一行字体自适应 **/
+ (UILabel *)labelSuperView:(UIView *)superView Lines:(NSInteger)lines Str:(NSString *)str FontName:(NSString *)fontName Size:(NSInteger)size Red:(NSInteger)red Green:(NSInteger)green Blue:(NSInteger)blue Alpha:(float)alpha TextAlignment:(NSTextAlignment)textAlignment AdjustsFontSizeToFitWidth:(BOOL)adjustsFontSizeToFitWidth
{
    UILabel *label = [[UILabel alloc] init];
    label.numberOfLines = lines;
    //富文本属性
    NSMutableAttributedString *attributed = [[NSMutableAttributedString alloc] initWithString:str attributes:@{NSFontAttributeName:[UIFont fontWithName:fontName size:size], NSForegroundColorAttributeName:[UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha]}];
    label.attributedText = attributed;
    label.textAlignment = textAlignment;
    label.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
    [superView addSubview:label];
    return label;
}
/** 快速创建label,用颜色宏定义字体颜色 **/
+ (UILabel *)labelSuperView:(UIView *)superView Lines:(NSInteger)lines Str:(NSString *)str FontName:(NSString *)fontName Size:(NSInteger)size TextAlignment:(NSTextAlignment)textAlignment TextColor:(UIColor *)textcolor
{
    UILabel *label = [[UILabel alloc] init];
    label.numberOfLines = lines;
    //富文本属性
    NSMutableAttributedString *attributed = [[NSMutableAttributedString alloc] initWithString:str attributes:@{NSFontAttributeName:[UIFont fontWithName:fontName size:size], NSForegroundColorAttributeName:textcolor}];
    label.attributedText = attributed;
    label.textAlignment = textAlignment;
    [superView addSubview:label];
    return label;
}
/** 快速创建label,用颜色宏定义字体颜色,有字体类型 **/
+ (UILabel *)labelSuperView:(UIView *)superView Lines:(NSInteger)lines Str:(NSString *)str FontName:(NSString *)fontName FontSize:(NSInteger)fontsize TextAlignment:(NSTextAlignment)textAlignment TextColor:(UIColor *)textcolor
{
    UILabel *label = [[UILabel alloc] init];
    label.numberOfLines = lines;
    label.font = [UIFont fontWithName:fontName size:fontsize];
    label.textAlignment = textAlignment;
    label.text = str;
    label.textColor = textcolor;
    [superView addSubview:label];
    return label;
}
/** 快速创建label,有背景，边框有弧度，字体颜色有颜色 **/
+ (UILabel *)labelSuperView:(UIView *)superView Lines:(NSInteger)lines Str:(NSString *)str FontName:(NSString *)fontName FontSize:(NSInteger)fontsize TextAlignment:(NSTextAlignment)textAlignment TextColor:(UIColor *)textcolor BGColor:(UIColor *)bgColor MasksToBounds:(BOOL)masksToBounds CornerRadius:(CGFloat)cornerRadius
{
    UILabel *label = [[UILabel alloc] init];
    label.numberOfLines = lines;
    label.font = [UIFont fontWithName:fontName size:fontsize];
    label.textAlignment = textAlignment;
    label.text = str;
    label.textColor = textcolor;
    label.backgroundColor = bgColor;
    label.layer.masksToBounds = masksToBounds;
    label.layer.cornerRadius = cornerRadius;
    [superView addSubview:label];
    return label;
}

/**
 根据内容得到label高度
 */
+ (CGFloat)getHeightByWidth:(CGFloat)width title:(NSString *)title font:(UIFont *)font
{
    //1.创建UILabel但不要设置frame
    UILabel *text = [[UILabel alloc]init];
    //2.给多行字符串
    text.text = title;
    //3.设置自动换行
    text.numberOfLines = 0;
    //4.设置UIFont
    text.font = font;
    /**
     5.根据text的font和字符串自动算出size（重点）
     200:你希望的最大宽度
     MAXFLOAT:最大高度为最大浮点数
     **/
    CGSize size = [text.text boundingRectWithSize:CGSizeMake(width, MAXFLOAT)
                                          options:NSStringDrawingUsesLineFragmentOrigin
                                       attributes:@{NSFontAttributeName:text.font}
                                          context:nil].size;
    return size.height;
}
/**
 根据内容得到label宽度
 */
+ (CGFloat)getWidthWithTitle:(NSString *)title font:(UIFont *)font {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 1000, 0)];
    label.text = title;
    label.font = font;
    [label sizeToFit];
    CGFloat width = label.frame.size.width;
    return ceil(width);
}

@end
