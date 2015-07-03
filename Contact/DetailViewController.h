//
//  DetailViewController.h
//  Contact
//
//  Created by Lee Joe on 3/23/15.
//  Copyright (c) 2015 Lee Joe. All rights reserved.
//

#ifndef Contact_DetailViewController_h
#define Contact_DetailViewController_h
#import "ContactClass.h"
#import <UIKit/UIKit.h>
#import "EditViewController.h"
#import "SecondViewController.h"

@interface DetailViewController : UIViewController//<UITableViewDataSource,UITableViewDelegate>
{
    Group *now_group;
    Member *now_member;
}
@property (nonatomic,strong) Group *now_group;
@property (nonatomic,strong) Member *now_member;
@property (nonatomic,strong) SecondViewController *svc;
@property (nonatomic,strong) IBOutlet UIButton* editButton;
@property (nonatomic,strong) IBOutlet UILabel* name_label;
@property (nonatomic,strong) IBOutlet UILabel* phone_label;
@property (nonatomic,strong) IBOutlet UILabel* email_label;
@end



#endif
