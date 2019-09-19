//
//  CommonDefine.h
//  TABAnimatedText
//
//  Created by wx on 2019/8/30.
//  Copyright © 2019年 wx. All rights reserved.
//

#ifndef CommonDefine_h
#define CommonDefine_h

#define kTabbarHeight ([[UIApplication sharedApplication] statusBarFrame].size.height>20?83:49)
#define kNavbarHeight ([[UIApplication sharedApplication] statusBarFrame].size.height + 44)
#define kScreenBounds [UIScreen mainScreen].bounds
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define kStatusHeight [[UIApplication sharedApplication] statusBarFrame].size.height
#define kBottomHeight ([[UIApplication sharedApplication] statusBarFrame].size.height>20?34:0)
#define kXBottomEdge 34
#define kXTopEdge 24
#define KscreenPixelWidth [UIScreen mainScreen].currentMode.size.width //屏幕的宽部分像素
#define KscreenPixelHeight [UIScreen mainScreen].currentMode.size.height  //屏幕高部分像素

/**
 *  字体设置
 */
#define Ping_FangscMedium          @"PingFangSC-Medium"
#define Ping_FangscRegular          @"PingFangSC-Regular"
#define PingFangSC_Semibold          @"PingFangSC-Semibold"

#endif /* CommonDefine_h */
