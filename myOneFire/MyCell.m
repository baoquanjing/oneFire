//
//  MyCell.m
//  myOneFire
//
//  Created by ngds on 15/5/25.
//  Copyright (c) 2015年 ngds. All rights reserved.
//

#import "MyCell.h"

@implementation MyCell
-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super init];
    if (self)
    {
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 2, 100, 10)];
        [self.contentView addSubview:_titleLabel];
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(_titleLabel.frame), 2, 100, 10)];
        [self.contentView addSubview:_nameLabel];
        
        _descLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, CGRectGetMaxY(_titleLabel.frame), self.bounds.size.width-20, 30)];
        _descLabel.font = [UIFont systemFontOfSize:10];
        _descLabel.numberOfLines = 0;
        [_descLabel sizeToFit];
        [self.contentView addSubview:_descLabel];
    }
    return  self;
}
+(MyCell *)cellWithTableView:(UITableView *)tableView
{
    NSString *ident = @"myCell";
    MyCell * cell = [tableView dequeueReusableCellWithIdentifier:ident];
    if (!cell)
    {
        cell = [[MyCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ident];
    }
    return cell;
}
-(void)setModel:(MyModel *)model
{
    _model = model;
    _titleLabel.text = @"title";
    _nameLabel.text = @"name";
    model.desc = @"descdescdescdescdescdescdescdescdescdescdescdescdescdesc";
    CGSize descSize = [model.desc sizeWithAttributes:@{NSFontAttributeName:_descLabel.font}];
    CGRect rect = _descLabel.frame;
    rect.size.height = descSize.height;
    _descLabel.frame = rect;
    _descLabel.text = model.desc;
    

}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
