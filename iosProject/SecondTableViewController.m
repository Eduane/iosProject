//
//  SecondTableViewController.m
//  fourthAttempts
//
//  Created by Eduana on 6/29/18.
//  Copyright © 2018 Eduana. All rights reserved.
//

#import "SecondTableViewController.h"

@interface SecondTableViewController ()

@end

@implementation SecondTableViewController{
NSArray *shqiperi;
    NSArray *maliZi;
    NSArray *turqi;
    NSArray *maldives;
}
- (void)viewDidLoad {
    [super viewDidLoad];
   shqiperi=[NSArray arrayWithObjects:@"Ksamil",@"Vlore",@"Sarande",@"Durres",nil];
    maliZi=[NSArray arrayWithObjects:@"Ulqin",@"Tivar",@"Budva",@"Tivat",nil];
    turqi=[NSArray arrayWithObjects:@"Antalia",@"Bodrum",@"Marmaris",@"Oludenis",nil];
    maldives=[NSArray arrayWithObjects:@"Male",@"Fuvahmulah",@"Hithadhoo",@"Kulhudhuffushi",nil];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if ([_destName isEqualToString:@"Shqiperi"]) {
        return [shqiperi count];
    }
    else if ([_destName isEqualToString:@"Mali i Zi"])
    {
        return [maliZi count];
    }
    else if ([_destName isEqualToString:@"Turqi"])
    {
        return [turqi count];
    }
    else if([_destName isEqualToString:@"Maldives"])
    {
        return [maldives count];
    }
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier=@"Destination1";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell==nil) {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    if ([_destName isEqualToString:@"Shqiperi"]) {
        cell.textLabel.text=[shqiperi objectAtIndex:indexPath.row];
    }
    else if([_destName isEqualToString:@"Mali i Zi"]) {
        cell.textLabel.text=[maliZi objectAtIndex:indexPath.row];    // Configure the cell...
    }
    else if ([_destName isEqualToString:@"Turqi"]) {
        cell.textLabel.text=[turqi objectAtIndex:indexPath.row];
        
    }
    else if([_destName isEqualToString:@"Maldives"]) {
        cell.textLabel.text=[maldives objectAtIndex:indexPath.row];
        
    }
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)button:(id)sender {
}
@end
