//
//  lastViewController.m
//  fourthAttempts
//
//  Created by Eduana on 6/30/18.
//  Copyright © 2018 Eduana. All rights reserved.
//

#import "lastViewController.h"

@interface lastViewController ()

@end

@implementation lastViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)button:(id)sender
{
    UIAlertController *alert=[UIAlertController alertControllerWithTitle:@"Alert!" message:@"Sapo perfunduat regjistrimin tuaj!" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *neRregull=[UIAlertAction actionWithTitle:@"Ne rregull!" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action){
        NSLog(@"Eshte shtypur butoni Ne rregull!");
    }];
    [alert addAction:neRregull];
    [self presentViewController:alert animated:YES completion:nil];
}
@end
