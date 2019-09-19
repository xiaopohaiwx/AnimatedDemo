//
//  UITextField+Category.h
//  XZDTravelProject
//
//  Created by mac on 2018/11/28.
//  Copyright © 2018年 shtang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h> 
NS_ASSUME_NONNULL_BEGIN

@interface UITextField (Category)

//快速创建textField,有占位符，占位符颜色可定义
+ (UITextField *)textFieldSuperView:(UIView *)superView Red:(float)red Green:(float)green Blue:(float)blue Alpha:(float)alpha TextAlignment:(NSTextAlignment)textAlignment PlaceholderRed:(float)PHred PlaceholderGreen:(float)PHgreen PlaceholderBlue:(float)PHblue PlaceholderAlpha:(float)PHalpha FontSize:(float)fontSize Placeholder:(NSString *)placeholder Tag:(NSInteger)tag;
//快速创建textField
+ (UITextField *)textFieldSuperView:(UIView *)superView Red:(float)red Green:(float)green Blue:(float)blue Alpha:(float)alpha TextAlignment:(NSTextAlignment)textAlignment FontSize:(float)fontSize Text:(NSString *)text Tag:(NSInteger)tag;
/** 快速创建textField,有占位符，占位符颜色可定义,宏定义颜色 **/
+ (UITextField *)textFieldSuperView:(UIView *)superView TextColor:(UIColor *)textColor TextAlignment:(NSTextAlignment)textAlignment PlaceHoldColor:(UIColor *)placeHoldColor FontName:(NSString *)fontName FontSize:(float)fontSize Placeholder:(NSString *)placeholder Tag:(NSInteger)tag;

@end

NS_ASSUME_NONNULL_END
