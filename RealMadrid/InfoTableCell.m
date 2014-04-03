//
//  InfoTableCell.m
//  RealMadrid
//
//  Created by Nguyễn Duy Phúc on 4/1/14.
//  Copyright (c) 2014 Nguyễn Duy Phúc. All rights reserved.
//

#import "InfoTableCell.h"

@implementation InfoTableCell

@synthesize playerImg = _playerImg;
@synthesize playerName = _playerName;
@synthesize playerPosition = _playerPosition;

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
