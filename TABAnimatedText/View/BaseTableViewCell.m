//
//  BaseTableViewCell.m
//  TABAnimatedText
//
//  Created by wx on 2019/8/30.
//  Copyright © 2019年 wx. All rights reserved.
//

#import "BaseTableViewCell.h"

@implementation BaseTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        self.backgroundColor = [UIColor whiteColor];
        [self setUI];
    }
    return self;
}

- (void)setUI{
    self.headImgView = [UIImageView imageViewSuperView:self.contentView ImgName:@""];
    self.headImgView.backgroundColor = [UIColor grayColor];
    [self.headImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(15);
        make.centerY.mas_equalTo(self.contentView);
        make.size.mas_equalTo(CGSizeMake(50, 50));
    }];
    self.contentLabel = [UILabel labelSuperView:self.contentView Lines:1 Str:@"" FontName:Ping_FangscRegular FontSize:15 TextAlignment:NSTextAlignmentLeft TextColor:[UIColor blackColor]];
    [self.contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.headImgView.mas_right).mas_offset(15);
        make.centerY.mas_equalTo(self.headImgView);
        make.right.mas_equalTo(-20);
        make.height.mas_equalTo(15);
    }];
}

- (void)setViewWithModel:(BaseModel *)mode{
    self.headImgView.image = [UIImage imageNamed:mode.imgName];
    self.contentLabel.text = mode.content;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
