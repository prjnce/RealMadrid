//
//  InfoTableCell.h
//  RealMadrid
//
//  Created by Nguyễn Duy Phúc on 4/1/14.
//  Copyright (c) 2014 Nguyễn Duy Phúc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InfoTableCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *playerImg;
@property (weak, nonatomic) IBOutlet UILabel *playerName;
@property (weak, nonatomic) IBOutlet UILabel *playerSalary;

@end
