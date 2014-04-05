//
//  InfoDetailViewController.h
//  RealMadrid
//
//  Created by Nguyễn Duy Phúc on 4/3/14.
//  Copyright (c) 2014 Nguyễn Duy Phúc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InfoDetailViewController : UIViewController

@property (retain, nonatomic) UIImage *image;
@property (retain, nonatomic) NSString *name;
@property (retain, nonatomic) NSString *position;

@property (retain, nonatomic) NSString *placeOfBirth;
@property (retain, nonatomic) NSString *yearOfBirth;
@property (retain, nonatomic) NSString *weightMember;
@property (retain, nonatomic) NSString *heightMember;
@property (retain, nonatomic) NSString *introMember;
@property (retain, nonatomic) UIImage *bgNumberPlayer;
@property (retain, nonatomic) NSString *number;
@property bool flag;

@end
