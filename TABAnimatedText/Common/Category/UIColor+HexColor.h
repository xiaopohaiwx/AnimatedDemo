//
//  UIColor+HexColor.h
//  youmeiwang
//
//  Created by zhuzhixin on 2017/6/29.
//  Copyright © 2017年 youmeiwang. All rights reserved.
//

#import <UIKit/UIKit.h>

#define RGBA_COLOR(R, G, B, A) [UIColor colorWithRed:((R) / 255.0f) green:((G) / 255.0f) blue:((B) / 255.0f) alpha:A]
#define RGB_COLOR(R, G, B) [UIColor colorWithRed:((R) / 255.0f) green:((G) / 255.0f) blue:((B) / 255.0f) alpha:1.0f]


@interface UIColor (HexColor)

+ (UIColor *)colorWithHexString:(NSString *)color;

+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

@end
