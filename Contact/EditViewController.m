//
//  EditViewController.m
//  Contact
//
//  Created by Lee Joe on 3/22/15.
//  Copyright (c) 2015 Lee Joe. All rights reserved.
//

#import "EditViewController.h"
#import "SecondViewController.h"
#import <Foundation/Foundation.h>
@implementation EditViewController
@synthesize name_field = _name_field;
@synthesize phone_field = _phone_field;
@synthesize email_field = _email_field;
@synthesize Add_flag;



- (void)viewDidLoad {
    [super viewDidLoad];
    if(self.Add_flag == [NSNumber numberWithBool:YES])
    {
        self.title = @"New Member";
    }
    else
    {
        self.title = @"Edit";
        self.name_field.text = [self.now_member GetName];
        self.phone_field.text = [self.now_member GetPhone];
        self.email_field.text = [self.now_member GetEmail];
    }
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)DoneButtonPressed :(UIStoryboardSegue *) segue{
    if(self.Add_flag == [NSNumber numberWithBool:YES])
    {
        [self.now_group AddMember:self.name_field.text :self.phone_field.text :self.email_field.text];
        //[self.delegate passValue:self.now_group];
    
        [self.navigationController popViewControllerAnimated:YES];
        //[UserEntity release];
        //[self performSegueWithIdentifier:@"Return To Second" sender:self];
    }
    else
    {
        [self.now_member SetName:self.name_field.text];
        [self.now_member SetPhone:self.phone_field.text];
        [self.now_member SetEmail:self.email_field.text];
        /*int count = [self.navigationController.viewControllers count];
        [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:count-2] animated:YES];
         */
        //[self.dvc.view setNeedsDisplay];
        DetailViewController *dvc ;
        SecondViewController *svc;
        dvc=[[self.navigationController viewControllers] objectAtIndex:[self.navigationController.viewControllers count]-2];
        svc=[[self.navigationController viewControllers] objectAtIndex:[self.navigationController.viewControllers count]-3];
        [dvc viewDidLoad];
        [svc viewDidLoad];
        [self.navigationController popViewControllerAnimated:YES];
    }
}

-(IBAction)CancelButtonPressed:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
    //[self performSegueWithIdentifier:@"Return To Second" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"Return To Second"])
    {
        id  SecondViewController = segue.destinationViewController;
        [SecondViewController setValue:self.now_group forKey:@"now_group"];
    }
    
}


@end
