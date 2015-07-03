//
//  SecondViewController.h
//  Contact
//
//  Created by Lee Joe on 3/21/15.
//  Copyright (c) 2015 Lee Joe. All rights reserved.
//

#ifndef Contact_SecondViewController_h
#define Contact_SecondViewController_h
#import "ContactClass.h"
#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    Group *now_group;
    NSMutableArray *MemberArray;
    NSString *s;
    UIRefreshControl *refreshControl;
}
@property (nonatomic,strong) IBOutlet UITableView *tableView;
@property (nonatomic,strong) NSMutableArray *MemberArray;
@property (nonatomic,strong) Group *now_group;
@property (nonatomic,strong) id test;
@property (nonatomic,strong) UIButton* addButton;
@property (nonatomic,strong) NSIndexPath *IP;


@end


#endif
