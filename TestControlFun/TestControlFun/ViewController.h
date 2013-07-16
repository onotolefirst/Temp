//
//  ViewController.h
//  TestControlFun
//
//  Created by Онотоле on 15.07.13.
//  Copyright (c) 2013 Онотоле. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kSwitchesSegmentIndex 0

@interface ViewController : UIViewController <UIAlertViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *numberField;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UISwitch *leftSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *rightSwitch;
@property (weak, nonatomic) IBOutlet UIButton *doSomeThingButton;



- (IBAction)textFieldDoneEditing:(id)sender;
- (IBAction)backgroundTap:(id)sender;
- (IBAction)sliderChanged:(UISlider *)sender;
- (IBAction)toggleControls:(UISegmentedControl *)sender;
- (IBAction)switchChanged:(UISlider *)sender;
- (IBAction)buttonPressed:(id)sender;



@end
