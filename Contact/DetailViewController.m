//
//  DetailViewController.m
//  Contact
//
//  Created by Lee Joe on 3/23/15.
//  Copyright (c) 2015 Lee Joe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DetailViewController.h"

@implementation DetailViewController
@synthesize name_label;
@synthesize phone_label;
@synthesize email_label;
@synthesize now_group;
@synthesize now_member;
@synthesize svc;
- (void)viewDidLoad {
    [super viewDidLoad];
    /*
    if(self.Add_flag)
    {
        self.title = @"New Member";
    }
    else
    {
        self.title = @"Edit";
    }
     */
    // Do any additional setup after loading the view, typically from a nib.
    self.name_label.text = [self.now_member GetName];
    self.phone_label.text = [self.now_member GetPhone];
    self.email_label.text = [self.now_member GetEmail];
    [self.view setNeedsDisplay];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"Edit it"])
    {
        //id  EditViewController = segue.destinationViewController;
        EditViewController *evc = segue.destinationViewController;
        //evc.now_group = [[self.now_group GetMemberArray]objectAtIndex:self.IP.row];
        
        //[(DetailViewController *)segue.destinationViewController DVC]=self;
        evc.now_group = self.now_group;
        evc.now_member = self.now_member;
        //[EditViewController setValue:[[self.now_group GetMemberArray]objectAtIndex:self.IP.row] forKey:@"now_group"];
        evc.Add_flag = [NSNumber numberWithBool:NO];
        //[EditViewController setValue:[NSNumber numberWithBool:YES] forKey:@"Add_flag"];
        //[SecondViewController setObject:[self.contactArray objectAtIndex:self.IP.row] forKey:@"now_group"];
    }
    [self.view setNeedsDisplay];
}

-(IBAction)EditButtonPressed:(id)sender
{
    [self performSegueWithIdentifier:@"Edit it" sender:self];
    
    [self.view setNeedsDisplay];
}

@end
