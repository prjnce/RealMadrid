//
//  NewsDetailViewController.m
//  RealMadrid
//
//  Created by Nguyễn Duy Phúc on 3/26/14.
//  Copyright (c) 2014 Nguyễn Duy Phúc. All rights reserved.
//

#import "NewsDetailViewController.h"

@interface NewsDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *newsLabel;

@end

@implementation NewsDetailViewController

-(void) viewWillAppear:(BOOL)animated{
    self.newsLabel.text = self.news;
}

@end
