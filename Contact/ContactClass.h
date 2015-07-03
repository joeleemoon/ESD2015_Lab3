//
//  ContactClass.h
//  Contact
//
//  Created by Lee Joe on 3/21/15.
//  Copyright (c) 2015 Lee Joe. All rights reserved.
//
#import <Foundation/Foundation.h>
#ifndef Contact_ContactClass_h
#define Contact_ContactClass_h



@interface Member : NSObject
{
    NSString *name;
    NSString *phone;
    NSString *email;
}

-(NSString*) GetName;
-(void) SetName:(NSString*)new_name;
-(NSString*) GetPhone;
-(void) SetPhone:(NSString*)new_phone;
-(NSString*) GetEmail;
-(void) SetEmail:(NSString*)new_email;


@end

@interface Group : NSObject
{
    NSString *group_name;
    int member_count;
    NSMutableArray *member_array;
}

-(id) initGroup:(NSString*)name;
-(NSString*)GetName;
-(void) AddMember:(NSString*)new_name :(NSString*)new_phone :(NSString*)new_email;
-(void) RemoveMember:(id)sender;
-(void) EditMember:(NSUInteger)index:(id)sender;
-(NSMutableArray*) GetMemberArray;
@property (nonatomic,strong) NSMutableArray *member_array;
@end


@class UserEntity;
@protocol PassValueDelegate <NSObject>
@property Group* now_group;
-(void)passValue:(Group*)value;

@end

#endif
