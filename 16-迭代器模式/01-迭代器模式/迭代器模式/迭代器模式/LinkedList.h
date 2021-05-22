//
//  LinkedList.h
//  迭代器模式
//
//  Created by Alan Ge on 2020/10/5.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface LinkedList : NSObject

@property (nonatomic, strong) Node      *headNode;   /**< 头结点 */
@property (nonatomic, assign) NSInteger numberOfNode;/**<  链表中的节点数 */

- (void)addData:(id)data; /**< 节点上的数据 */

@end
