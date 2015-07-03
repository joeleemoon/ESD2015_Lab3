//
//  EditViewController.h
//  Contact
//
//  Created by Lee Joe on 3/22/15.
//  Copyright (c) 2015 Lee Joe. All rights reserved.
//

#ifndef Contact_EditViewController_h
#define Contact_EditViewController_h
#import "ContactClass.h"
#import "SecondViewController.h"
#import "DetailViewController.h"
#import "EditViewController.h"
#import <UIKit/UIKit.h>

@interface EditViewController : UIViewController
{
    Group *now_group;
}
//@property (nonatomic,strong) NSMutableArray *contactArray;
//@property (nonatomic,strong) NSArray *group;
@property NSNumber *Add_flag;

@property (nonatomic,strong) Group *now_group;
@property (nonatomic,strong) Member *now_member;
//@property (nonatomic,strong) SecondViewController *svc;
@property (nonatomic,strong) IBOutlet UITextField *name_field;
@property (nonatomic,strong) IBOutlet UITextField *phone_field;
@property (nonatomic,strong) IBOutlet UITextField *email_field;

@end


#endif
