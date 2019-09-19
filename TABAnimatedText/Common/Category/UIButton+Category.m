//
//  UIButton+Category.m
//  Mine
//
//  Created by mac on 2018/11/26.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "UIButton+Category.h"

@implementation UIButton (Category)

- (void)adjustAtTitlePositon:(UIViewContentMode) position withSpacing: (CGFloat) spacing {

    CGRect imageRect = [self imageRectForContentRect:self.frame];

    CGSize titleSize = [self.currentTitle sizeWithAttributes:@{NSFontAttributeName:self.titleLabel.font}];

    switch (position) {
        case UIViewContentModeBottom:
            self.contentMode = UIViewContentModeCenter;
            self.titleEdgeInsets = UIEdgeInsetsMake((imageRect.size.height+spacing), -(imageRect.size.width), 0, 0);
            self.imageEdgeInsets = UIEdgeInsetsMake(-(titleSize.height + spacing), 0, 0, -titleSize.width);
            break;

        case UIViewContentModeRight:
            self.contentMode = UIViewContentModeCenter;
            self.titleEdgeInsets = UIEdgeInsetsMake(0, 0, 0, -spacing);
            self.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0);
            break;

        default:
            break;
    }


}
/** 快速创建button **/
+ (UIButton *)buttonSuperView:(UIView *)superView ImgName:(NSString *)imgName Tag:(NSInteger)tag Target:(id)target Action:(SEL)action ControlEvents:(UIControlEvents)controlEvents
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:imgName] forState:UIControlStateNormal];
    button.tag = tag;
    [button addTarget:target action:action forControlEvents:controlEvents];
    [superView addSubview:button];
    return button;
}
/** 快速创建button，圆形 **/
+ (UIButton *)buttonSuperView:(UIView *)superView ImgName:(NSString *)imgName Tag:(NSInteger)tag Target:(id)target Action:(SEL)action ControlEvents:(UIControlEvents)controlEvents CornerRadius:(float)cornerRadius MasksToBounds:(BOOL)masksToBounds
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:imgName] forState:UIControlStateNormal];
    button.tag = tag;
    button.layer.cornerRadius = cornerRadius;
    button.layer.masksToBounds = masksToBounds;
    [button addTarget:target action:action forControlEvents:controlEvents];
    [superView addSubview:button];
    return button;
}
/** 快速创建button，圆形,加载网络图片 **/
+ (UIButton *)buttonSuperView:(UIView *)superView ImgUrl:(NSString *)imgUrl Tag:(NSInteger)tag Target:(id)target Action:(SEL)action ControlEvents:(UIControlEvents)controlEvents CornerRadius:(float)cornerRadius MasksToBounds:(BOOL)masksToBounds
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
//    [button setImage:[UIImage imageFromURLString:imgUrl] forState:UIControlStateNormal];
    [button setImage:[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:imgUrl]]] forState:UIControlStateNormal];
    button.tag = tag;
    button.layer.cornerRadius = cornerRadius;
    button.layer.masksToBounds = masksToBounds;
    [button addTarget:target action:action forControlEvents:controlEvents];
    [superView addSubview:button];
    return button;
}
/** 快速创建button，有背景，圆角 **/
+ (UIButton *)buttonSuperView:(UIView *)superView Tag:(NSInteger)tag Target:(id)target Action:(SEL)action ControlEvents:(UIControlEvents)controlEvents CornerRadius:(float)cornerRadius MasksToBounds:(BOOL)masksToBounds
                        Title:(NSString *)title State:(UIControlState)state BGColor:(UIColor *)bgColor Font:(CGFloat)font
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:state];
    button.backgroundColor = bgColor;
    button.tag = tag;
    button.titleLabel.font = [UIFont systemFontOfSize:font];
    button.layer.cornerRadius = cornerRadius;
    button.layer.masksToBounds = masksToBounds;
    [button addTarget:target action:action forControlEvents:controlEvents];
    [superView addSubview:button];
    return button;
}
/** 快速创建button，带有正常和选中状态两种图片 **/
+ (UIButton *)buttonSuperView:(UIView *)superView NormalImgName:(NSString *)normalImgName SelectImgName:(NSString *)selectImgName Tag:(NSInteger)tag Target:(id)target Action:(SEL)action ControlEvents:(UIControlEvents)controlEvents
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed: normalImgName] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:selectImgName] forState:UIControlStateSelected];
    button.tag = tag;
    [button addTarget:target action:action forControlEvents:controlEvents];
    [superView addSubview:button];
    return button;
}
/** 快速创建button,有标题，标题自定义颜色大小，无图片无背景，**/
+ (UIButton *)buttonSuperView:(UIView *)superView Tag:(NSInteger)tag Target:(id)target Action:(SEL)action ControlEvents:(UIControlEvents)controlEvents Title:(NSString *)title TitleColor:(UIColor *)titleColor FontSize:(CGFloat)fontSize
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.tag = tag;
    [button addTarget:target action:action forControlEvents:controlEvents];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    [superView addSubview:button];
    return button;
}
/** 快速创建button,有标题，标题自定义颜色大小，有圆角, 有正常和选中两种状态 **/
+ (UIButton *)buttonSuperView:(UIView *)superView Tag:(NSInteger)tag Target:(id)target Action:(SEL)action ControlEvents:(UIControlEvents)controlEvents Title:(NSString *)title SelectedTitle:(NSString *)selectedTitle TitleColor:(UIColor *)titleColor SelectedTitleColor:(UIColor *)selectedTitleColor FontSize:(CGFloat)fontSize FontName:(NSString *)fontName MasksToBounds:(BOOL)masksToBounds CornerRadius:(CGFloat)cornerRadius
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.tag = tag;
    [button addTarget:target action:action forControlEvents:controlEvents];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitle:selectedTitle forState:UIControlStateSelected];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button setTitleColor:selectedTitleColor forState:UIControlStateSelected];
    button.titleLabel.font = [UIFont fontWithName:fontName size:fontSize];
    button.layer.masksToBounds = masksToBounds;
    button.layer.cornerRadius = cornerRadius;
    [superView addSubview:button];
    return button;
}
/** 快速创建button,有标题，标题自定义颜色大小，有圆角 **/
+ (UIButton *)buttonSuperView:(UIView *)superView Tag:(NSInteger)tag Target:(id)target Action:(SEL)action ControlEvents:(UIControlEvents)controlEvents Title:(NSString *)title TitleColor:(UIColor *)titleColor FontSize:(CGFloat)fontSize FontName:(NSString *)fontName MasksToBounds:(BOOL)masksToBounds CornerRadius:(CGFloat)cornerRadius BorderColor:(UIColor *)borderColor BorderWidth:(CGFloat)borderWidth
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.tag = tag;
    [button addTarget:target action:action forControlEvents:controlEvents];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont fontWithName:fontName size:fontSize];
    button.layer.masksToBounds = masksToBounds;
    button.layer.cornerRadius = cornerRadius;
    button.layer.borderColor = [borderColor CGColor];
    button.layer.borderWidth = borderWidth;
    [superView addSubview:button];
    return button;
}

/** 异步加载网络图片 **/
- (void)xr_setButtonImageWithUrl:(NSString *)urlStr {
    NSURL * url = [NSURL URLWithString:urlStr];
    // 根据图片的url下载图片数据
    dispatch_queue_t xrQueue = dispatch_queue_create("loadImage", NULL); // 创建GCD线程队列
    dispatch_async(xrQueue, ^{
        // 异步下载图片
        UIImage * img = [UIImage imageWithData:[NSData dataWithContentsOfURL:url]];
        // 主线程刷新UI
        dispatch_async(dispatch_get_main_queue(), ^{
            [self setImage:img forState:UIControlStateNormal];
        });
    });
    
}


@end

#import <objc/runtime.h>


static const char * kHitEdgeInsets = "hitEdgeInsets";
static const char * kHitScale      = "hitScale";
static const char * kHitWidthScale      = "hitWidthScale";
static const char * kHitHeightScale      = "hitHeightScale";

@implementation UIButton (LeeHitRect)

#pragma mark - set Method
-(void)setHitEdgeInsets:(UIEdgeInsets)hitEdgeInsets{
    NSValue *value = [NSValue value:&hitEdgeInsets withObjCType:@encode(UIEdgeInsets)];
    objc_setAssociatedObject(self,kHitEdgeInsets, value, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(void)setHitScale:(CGFloat)hitScale{
    CGFloat width = self.bounds.size.width * hitScale;
    CGFloat height = self.bounds.size.height * hitScale;
    self.hitEdgeInsets = UIEdgeInsetsMake(-height, -width,-height, -width);
    objc_setAssociatedObject(self, kHitScale, @(hitScale), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


-(void)setHitWidthScale:(CGFloat)hitWidthScale{
    CGFloat width = self.bounds.size.width * hitWidthScale;
    CGFloat height = self.bounds.size.height ;
    self.hitEdgeInsets = UIEdgeInsetsMake(-height, -width,-height, -width);
    objc_setAssociatedObject(self, kHitWidthScale, @(hitWidthScale), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}



-(void)setHitHeightScale:(CGFloat)hitHeightScale{
    CGFloat width = self.bounds.size.width;
    CGFloat height = self.bounds.size.height * hitHeightScale ;
    self.hitEdgeInsets = UIEdgeInsetsMake(-height, -width,-height, -width);
    objc_setAssociatedObject(self, kHitHeightScale, @(hitHeightScale), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


#pragma mark - get Method
-(UIEdgeInsets)hitEdgeInsets{
    NSValue *value = objc_getAssociatedObject(self, kHitEdgeInsets);
    UIEdgeInsets edgeInsets;
    [value getValue:&edgeInsets];
    return value ? edgeInsets:UIEdgeInsetsZero;
}

-(CGFloat)hitScale{
    return [objc_getAssociatedObject(self, kHitScale) floatValue];
}

-(CGFloat)hitWidthScale{
    return [objc_getAssociatedObject(self, kHitWidthScale) floatValue];
}

-(CGFloat)hitHeightScale{
    return [objc_getAssociatedObject(self, kHitHeightScale) floatValue];
}



#pragma mark - override super method
-(BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    //如果 button 边界值无变化  失效 隐藏 或者透明 直接返回
    if(UIEdgeInsetsEqualToEdgeInsets(self.hitEdgeInsets, UIEdgeInsetsZero) || !self.enabled || self.hidden || self.alpha == 0 ) {
        return [super pointInside:point withEvent:event];
    }else{
        CGRect relativeFrame = self.bounds;
        CGRect hitFrame = UIEdgeInsetsInsetRect(relativeFrame, self.hitEdgeInsets);
        return CGRectContainsPoint(hitFrame, point);
    }
}

@end

