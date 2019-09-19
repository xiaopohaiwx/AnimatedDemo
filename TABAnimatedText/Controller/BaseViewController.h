//
//  BaseViewController.h
//  TABAnimatedText
//
//  Created by wx on 2019/8/30.
//  Copyright © 2019年 wx. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseViewController : UIViewController

@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, strong) NSMutableArray *dataArr;

@end

NS_ASSUME_NONNULL_END
