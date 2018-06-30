//
//  ViewController.m
//  fourthAttempts
//
//  Created by Eduana on 6/28/18.
//  Copyright © 2018 Eduana. All rights reserved.
//

#import "ViewController.h"

static NSString *ourObjectKey=@"ourObjectKey";
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"titleLabel.text=%@",self.titleLabel.text);
    //self.ourObject=[[NSObject alloc] init];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)textViewShouldBeginEditing:(UITextField *)textField
{
    self.button.enabled=YES;
    return YES;
}

-(BOOL)textViewShouldReturn:(UITextField *)textField
{
    self.ourObject.emri=self.nameTextField.text;
    [self saveOurObject];
    [self.nameTextField resignFirstResponder];
    self.button.enabled=NO;
    return YES;
}
-(BOOL)textViewShouldEndEditing:(UITextField *)textField
{
    self.ourObject.emri=self.nameTextField.text;
    [self saveOurObject];
    [self.nameTextField resignFirstResponder];
    return YES;
}

-(IBAction)stepperValueChanged:(id)sender
{
    self.ratingValue.text=[NSString stringWithFormat:@"%g",self.stepper.value];
    self.ourObject.rating=(int)self.stepper.value;
    [self saveOurObject];
    
}

-(void)saveOurObject
{
    NSData *ourObjectData=[NSKeyedArchiver archivedDataWithRootObject:self.ourObject];
    [[NSUserDefaults standardUserDefaults]setObject:ourObjectData forKey:ourObjectKey];
}
@end
