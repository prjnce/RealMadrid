//
//  InfoDetailViewController.m
//  RealMadrid
//
//  Created by Nguyễn Duy Phúc on 4/3/14.
//  Copyright (c) 2014 Nguyễn Duy Phúc. All rights reserved.
//

#import "InfoDetailViewController.h"

@interface InfoDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *playerImage;
@property (weak, nonatomic) IBOutlet UILabel *playerNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *positionLabel;

@end

@implementation InfoDetailViewController


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    _playerNameLabel.text = self.name;
    _playerImage.image = self.image;
    _positionLabel.text = self.position;
}


@end
