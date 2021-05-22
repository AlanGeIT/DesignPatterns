//
//  SubTableViewOne.m
//  TabelViewDemo
//
//  Created by Alan Ge on 2020/10/4.
//

#import "SubTableViewOne.h"

@implementation SubTableViewOne

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
    
    cell.textLabel.text = [self getObject:indexPath];
    
    return cell;
}

@end
