//
//  InfoViewController.m
//  RealMadrid
//
//  Created by Nguyễn Duy Phúc on 3/26/14.
//  Copyright (c) 2014 Nguyễn Duy Phúc. All rights reserved.
//

#import "InfoViewController.h"
#import "InfoTableCell.h"
#import "UtilsObject.h"
#import "InfoDetailViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface InfoViewController ()
{
    UtilsObject *_util;
    InfoDetailViewController *_infoDetail;
}
@end

@implementation InfoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Information";
    _util = [[UtilsObject alloc] init]; //init util
    [self buildData]; // build data
    
    _tableView.dataSource = self;
    _tableView.delegate = self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setHidden:YES];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.navigationController.navigationBar setHidden:NO];

}

-(NSMutableArray *) listPlayer
{
    if(!_listPlayer){
        _listPlayer = [[NSMutableArray alloc] init];
    }
    return _listPlayer;
}


- (void) buildData
{
    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"Members" ofType:@"plist"];
    NSArray* array = [NSArray arrayWithContentsOfFile:filePath];
    _listPlayer = [NSMutableArray arrayWithArray:array];
}

#pragma mark - Table view datasource & delegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 2;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return @"Coaches";
            break;
        case 1:
            return @"Players";
            break;
        default:
            return nil;
            break;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return [_listPlayer[0] count];
    }else if(section == 1){
        return [_listPlayer[1] count];
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"InfoTableCell";
    
    InfoTableCell *cell = (InfoTableCell *)[tableView dequeueReusableCellWithIdentifier:cellID];
    
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"InfoTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    if(indexPath.section == 0){
        NSDictionary *coaches = _listPlayer[0][indexPath.row];
        cell.playerName.text = [coaches objectForKey:@"name"];
        cell.playerPosition.text =  [coaches objectForKey:@"position"];
        cell.playerImg.image = [UIImage imageNamed:[coaches objectForKey:@"avatar"]];
        cell.playerImg.layer.masksToBounds = YES;
        cell.playerImg.layer.cornerRadius = 20;
        return cell;
    }else if(indexPath.section == 1){
        NSDictionary *player = _listPlayer[1][indexPath.row];
        cell.playerName.text = [player objectForKey:@"name"];
        cell.playerPosition.text =  [player objectForKey:@"position"];
        cell.playerImg.image = [UIImage imageNamed:[player objectForKey:@"avatar"]];
        cell.playerImg.layer.masksToBounds = YES;
        cell.playerImg.layer.cornerRadius = 20;
        return cell;
    }
    return nil;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here, for example:
    // Create the next view controller.
    if (!_infoDetail) {
        _infoDetail = [[InfoDetailViewController alloc] initWithNibName:@"InfoDetailViewController" bundle:nil];
    }
    
    if(indexPath.section == 0){
        NSDictionary *coaches = _listPlayer[0][indexPath.row];
        _infoDetail.name = [coaches objectForKey:@"name"];
        _infoDetail.position =  [coaches objectForKey:@"position"];
        _infoDetail.image = [UIImage imageNamed:[coaches objectForKey:@"image"]];
    }else if(indexPath.section == 1){
        NSDictionary *player = _listPlayer[1][indexPath.row];
        _infoDetail.name = [player objectForKey:@"name"];
        _infoDetail.position =  [player objectForKey:@"position"];
        _infoDetail.image = [UIImage imageNamed:[player objectForKey:@"image"]];
    }
    
    
    [self.navigationController pushViewController:_infoDetail animated:YES];
}

@end
