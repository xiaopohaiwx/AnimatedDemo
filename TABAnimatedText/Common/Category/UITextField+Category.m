//
//  UITextField+Category.m
//  XZDTravelProject
//
//  Created by mac on 2018/11/28.
//  Copyright © 2018年 shtang. All rights reserved.
//

#import "UITextField+Category.h"

@implementation UITextField (Category)
/** 快速创建textField,有占位符，占位符颜色可定义 **/
+ (UITextField *)textFieldSuperView:(UIView *)superView Red:(float)red Green:(float)green Blue:(float)blue Alpha:(float)alpha TextAlignment:(NSTextAlignment)textAlignment PlaceholderRed:(float)PHred PlaceholderGreen:(float)PHgreen PlaceholderBlue:(float)PHblue PlaceholderAlpha:(float)PHalpha FontSize:(float)fontSize Placeholder:(NSString *)placeholder Tag:(NSInteger)tag
{
    UITextField *textField = [[UITextField alloc] init];
    textField.placeholder = placeholder;
    [textField setValue:[UIColor colorWithRed:PHred/255.0 green:PHgreen/255.0 blue:PHblue/255.0 alpha:PHalpha] forKeyPath:@"_placeholderLabel.textColor"];
    textField.textColor = [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
    textField.font = [UIFont systemFontOfSize:fontSize];
    textField.textAlignment = textAlignment;
    textField.tag = tag;
    [superView addSubview:textField];
    return textField;
}
/** 快速创建textField **/
+ (UITextField *)textFieldSuperView:(UIView *)superView Red:(float)red Green:(float)green Blue:(float)blue Alpha:(float)alpha TextAlignment:(NSTextAlignment)textAlignment FontSize:(float)fontSize Text:(NSString *)text Tag:(NSInteger)tag
{
    UITextField *textField = [[UITextField alloc] init];
    textField.text = text;
    textField.textColor = [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
    textField.font = [UIFont systemFontOfSize:fontSize];
    textField.textAlignment = textAlignment;
    textField.tag = tag;
    [superView addSubview:textField];
    return textField;
}
/** 快速创建textField,有占位符，占位符颜色可定义,宏定义颜色 **/
+ (UITextField *)textFieldSuperView:(UIView *)superView TextColor:(UIColor *)textColor TextAlignment:(NSTextAlignment)textAlignment PlaceHoldColor:(UIColor *)placeHoldColor FontName:(NSString *)fontName FontSize:(float)fontSize Placeholder:(NSString *)placeholder Tag:(NSInteger)tag
{
    UITextField *textField = [[UITextField alloc] init];
    textField.placeholder = placeholder;
    [textField setValue:placeHoldColor forKeyPath:@"_placeholderLabel.textColor"];
    textField.textColor = textColor;
    textField.font = [UIFont fontWithName:fontName size:fontSize];
    textField.textAlignment = textAlignment;
    textField.tag = tag;
    [superView addSubview:textField];
    return textField;
}


@end
