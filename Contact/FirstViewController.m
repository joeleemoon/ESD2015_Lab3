//
//  ViewController.m
//  Contact
//
//  Created by Lee Joe on 3/17/15.
//  Copyright (c) 2015 Lee Joe. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Group *group_home = [[Group alloc] initGroup:@"Home"];
    Group *group_work = [[Group alloc] initGroup:@"Work"];
    Group *group_others = [[Group alloc]initGroup:@"Others"];
    
    self.contactArray = [[NSMutableArray alloc]initWithObjects:group_home,group_work,group_others, nil];
    self.title = @"Group";
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    //Set number of cells in a Section
}
/*
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
        return 1; }
    
    //Set number of Section in table view
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
        return 0; //there is not content in table view
}
*/


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
    cell.textLabel.text = [[self.contactArray objectAtIndex:indexPath.row] GetName];
    return cell; //return the new cell
}

//Set number of cells in a Section
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
//Set number of Section in table view
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.contactArray count];
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.IP = indexPath;
    //[tableView indexPathForCell:tableView];
    [self performSegueWithIdentifier:@"To Second View Segue" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"To Second View Segue"])
    {
        //id  SecondViewController = segue.destinationViewController;
        //[SecondViewController setValue:[self.contactArray objectAtIndex:self.IP.row] forKey:@"now_group"];
        SecondViewController *svc =segue.destinationViewController;
        svc.now_group = [self.contactArray objectAtIndex:self.IP.row];
        //[SecondViewController setObject:[self.contactArray objectAtIndex:self.IP.row] forKey:@"now_group"];
    }
}

@end

