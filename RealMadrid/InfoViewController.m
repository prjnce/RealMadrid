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

@interface InfoViewController ()
{
    UtilsObject *_util;
}
@end

@implementation InfoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _util = [[UtilsObject alloc] init]; //init util
    [self buildData]; // build data
    
    _tableView.dataSource = self;
    _tableView.delegate = self;
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
    
    NSLog(@"Members: %d", [_listPlayer count]);
    NSLog(@"Player: %@",_listPlayer[0]);
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
            return @"Header1";
            break;
        case 1:
            return @"Header2";
            break;
        default:
            return nil;
            break;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_listPlayer count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"InfoTableCell";
    
    InfoTableCell *cell = (InfoTableCell *)[tableView dequeueReusableCellWithIdentifier:cellID];
    
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"InfoTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    NSArray *player = _listPlayer[indexPath.row];
    NSLog(@"%@", _listPlayer[indexPath.row]);
    cell.playerName.text = player[0];
    cell.playerSalary.text =  [NSString stringWithFormat:@"%@",player[1]];
    cell.playerImg.image = [UIImage imageNamed:player[2]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //int rowSelected = indexPath.row;
    //PlayerObject *objPlayer = [_listPlayer objectAtIndex:rowSelected];
}

@end
