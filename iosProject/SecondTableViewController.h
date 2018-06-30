//
//  SecondTableViewController.h
//  fourthAttempts
//
//  Created by Eduana on 6/29/18.
//  Copyright © 2018 Eduana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondTableViewController : UITableViewController
@property (nonatomic,strong) NSString *destName;
@property(nonatomic,weak)IBOutlet UIButton *button;

- (IBAction)button:(id)sender;


@end
