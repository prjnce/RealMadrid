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
@property (weak, nonatomic) IBOutlet UILabel *placeofbirth;
@property (weak, nonatomic) IBOutlet UILabel *dateofbirth;
@property (weak, nonatomic) IBOutlet UILabel *weight;
@property (weak, nonatomic) IBOutlet UILabel *height;
@property (weak, nonatomic) IBOutlet UITextView *intro;

@end

@implementation InfoDetailViewController


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    _playerNameLabel.text = self.name;
    _playerImage.image = self.image;
    _positionLabel.text = self.position;
    _placeofbirth.text = self.placeOfBirth;
    _dateofbirth.text = self.yearOfBirth;
    _weight.text = self.weightMember;
    _height.text = self.heightMember;
    _intro.text = self.introMember;
}


@end
