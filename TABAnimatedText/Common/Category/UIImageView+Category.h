//
//  UIImageView+Category.h
//  Mine
//
//  Created by mac on 2018/11/26.
//  Copyright © 2018年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h> 
NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (Category)

//快速创建imageView，加图片
+ (UIImageView *)imageViewSuperView:(UIView *)superView ImgName:(NSString *)imgName;
//快速创建imageView,有背景颜色，边框有弧度
+ (UIImageView *)imageViewSuperView:(UIView *)superView BorderWidth:(float)borderWidth MasksToBounds:(BOOL)masksToBounds BorderColor:(UIColor *)borderColor CornerRadius:(NSInteger)cornerRadius BackgroundColor:(UIColor *)backgroundColor;
@end

NS_ASSUME_NONNULL_END
