//
//  InfoViewController.h
//  RealMadrid
//
//  Created by Nguyễn Duy Phúc on 3/26/14.
//  Copyright (c) 2014 Nguyễn Duy Phúc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InfoViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (retain, nonatomic) NSMutableArray *listPlayer;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
