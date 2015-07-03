//
//  SecondViewController.m
//  Contact
//
//  Created by Lee Joe on 3/21/15.
//  Copyright (c) 2015 Lee Joe. All rights reserved.
//

#import "SecondViewController.h"
#import "EditViewController.h"
#import "DetailViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize now_group;
@synthesize MemberArray;
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = [now_group GetName];
    [self.view setNeedsDisplay];
    [self.tableView reloadData];
    //[self tableView:<#(UITableView *)#> cellForRowAtIndexPath:<#(NSIndexPath *)#>]
    //self.MemberArray = [[NSMutableArray alloc]initWithObjects:@"Joe",@"Rose",@"Jack", nil];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    //Set number of cells in a Section
}


//Set content in the cell
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //Create a new Cell
    static NSString *CellIdentifier = @"Cell" ;
    UITableViewCell *cell =
    [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    
    //Check if there are cached cells in the table
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    //assign the cell a name
    cell.textLabel.text = [[[self.now_group GetMemberArray]objectAtIndex:indexPath.row] GetName];
    [self.view setNeedsDisplay];
    return cell; //return the new cell
}
//Set number of cells in a Section
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
//Set number of Section in table view
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[self.now_group GetMemberArray]count];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.IP = indexPath;
    //[tableView indexPathForCell:tableView];
    [self performSegueWithIdentifier:@"To Detail View Segue" sender:self];
    //[self.view setNeedsDisplay];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"To Add View Segue"])
    {
        //id  EditViewController = segue.destinationViewController;
        EditViewController *evc = segue.destinationViewController;
        //evc.svc = self;
        //evc.now_group = [[self.now_group GetMemberArray]objectAtIndex:self.IP.row];
        evc.now_group = self.now_group;
        //[EditViewController setValue:[[self.now_group GetMemberArray]objectAtIndex:self.IP.row] forKey:@"now_group"];
        evc.Add_flag = [NSNumber numberWithBool:YES];
        
    }
    else if ([segue.identifier isEqualToString:@"To Detail View Segue"])
    {
        DetailViewController *dvc = segue.destinationViewController;
        dvc.svc = self;
        dvc.now_group = self.now_group;
        dvc.now_member = [[self.now_group GetMemberArray] objectAtIndex:self.IP.row];
    }
}

-(IBAction)AddButtonPressed:(id)sender
{
    [self performSegueWithIdentifier:@"To Add View Segue" sender:self];
}
@end
