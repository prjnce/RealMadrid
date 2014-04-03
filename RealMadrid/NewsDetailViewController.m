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

@property (weak, nonatomic) IBOutlet UITextView *newsContent;
@end

@implementation NewsDetailViewController

-(void) viewWillAppear:(BOOL)animated{
    self.newsLabel.text = self.news;
    self.newsContent.text = self.content;
}

@end
