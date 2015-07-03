//
//  ViewController.h
//  Contact
//
//  Created by Lee Joe on 3/17/15.
//  Copyright (c) 2015 Lee Joe. All rights reserved.
//
#import "ContactClass.h"
#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,PassValueDelegate>
{
    NSMutableArray *contactArray;
}
@property (nonatomic,strong) NSMutableArray *contactArray;
//@property (nonatomic,strong) NSArray *group;
@property (nonatomic,strong) UITableView *TV;
@property (nonatomic,strong) NSIndexPath *IP;

@end

