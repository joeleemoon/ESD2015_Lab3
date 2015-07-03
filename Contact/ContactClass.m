//
//  ContactClass.m
//  Contact
//
//  Created by Lee Joe on 3/21/15.
//  Copyright (c) 2015 Lee Joe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ContactClass.h"

@implementation Member

-(NSString*)GetName
{
    return self->name;
}
-(void)SetName:(NSString *)new_name
{
    self->name = new_name;
}

-(NSString*)GetPhone
{
    return self->phone;
}
-(void)SetPhone:(NSString *)new_phone
{
    self->phone = new_phone;
}


-(NSString*)GetEmail
{
    return self->email;
}
-(void)SetEmail:(NSString *)new_email
{
    self->email = new_email;
}

@end

@implementation Group

-(id)initGroup:(NSString*)name
{
    self->member_count=0;
    self->group_name=name;
    self->member_array = [[NSMutableArray alloc] init];
    return self;
}
-(NSString*)GetName
{
    return self->group_name;
}

-(void)AddMember:(NSString*)new_name :(NSString*)new_phone :(NSString*)new_email
{
    Member *new_member=[Member alloc];
    [new_member SetName:new_name];
    [new_member SetPhone:new_phone];
    [new_member SetEmail:new_email];
    [self->member_array addObject:new_member];
}
-(void)RemoveMember:(id)sender
{
    [self->member_array removeObject:sender];
}
-(void)EditMember:(NSUInteger)index:(id)sender
{
    [self->member_array replaceObjectAtIndex:index withObject:sender];
}

-(NSMutableArray*) GetMemberArray
{
    return self->member_array;
}

@end