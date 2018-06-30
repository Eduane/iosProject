//
//  lastViewController.h
//  fourthAttempts
//
//  Created by Eduana on 6/30/18.
//  Copyright © 2018 Eduana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface lastViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *wiffiLabel;
@property (weak, nonatomic) IBOutlet UISwitch *wiffiSwitch;
@property (weak, nonatomic) IBOutlet UILabel *pishineLabel;
@property (weak, nonatomic) IBOutlet UISwitch *pishineSwitch;
@property (weak, nonatomic) IBOutlet UILabel *parkingLabel;
@property (weak, nonatomic) IBOutlet UISwitch *parkingSwitch;
@property (weak, nonatomic) IBOutlet UITextField *txtDestinacioni;
@property (weak, nonatomic) IBOutlet UIButton *button;
- (IBAction)button:(id)sender;

@end
