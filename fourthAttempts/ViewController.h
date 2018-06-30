//
//  ViewController.h
//  fourthAttempts
//
//  Created by Eduana on 6/28/18.
//  Copyright © 2018 Eduana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ourClass.h"


@interface ViewController : UIViewController<UITextFieldDelegate,UITextViewDelegate>

@property(nonatomic,strong)ourClass *ourObject;
@property(nonatomic,weak)IBOutlet UILabel *titleLabel;
@property(nonatomic,weak)IBOutlet UITextField *nameTextField;
@property(nonatomic,weak)IBOutlet UILabel*titleLabel1;
@property(nonatomic,weak)IBOutlet UITextField *nameTextField1;
@property(nonatomic,weak)IBOutlet UIButton *button;
@property(nonatomic,weak)IBOutlet UIStepper *stepper;
@property(nonatomic,weak)IBOutlet UILabel *ratingValue;



-(IBAction)stepperValueChanged:(id)sender;

-(void)saveOurObject;
@end

