//
//  BaseTableView.h
//  TabelViewDemo
//
//  Created by Alan Ge on 2020/10/4.
//

#import <UIKit/UIKit.h>

@interface BaseTableView : UITableView <UITableViewDelegate, UITableViewDataSource>

// 子类获取数据的接口
- (id)getObject:(NSIndexPath *)indexPath;

// 给外界提供的接口
- (void)dataRefresh:(NSMutableArray *)mutableArray;

@end
