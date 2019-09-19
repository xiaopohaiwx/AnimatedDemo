//
//  UIView+Category.h
//  Mine
//
//  Created by mac on 2018/11/26.
//  Copyright © 2018年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h> 
NS_ASSUME_NONNULL_BEGIN

@interface UIView (Category)

//快速创建view
+ (UIView *)viewSuperView:(UIView *)superView BGColor:(UIColor *)bgColor MasksToBounds:(BOOL)masksToBounds CornerRadius:(NSInteger)cornerRadius;

@end

NS_ASSUME_NONNULL_END
