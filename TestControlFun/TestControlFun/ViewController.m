//
//  ViewController.m
//  TestControlFun
//
//  Created by Онотоле on 15.07.13.
//  Copyright (c) 2013 Онотоле. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setNameField:nil];
    [self setNumberField:nil];
    [self setSliderLabel:nil];
    [self setLeftSwitch:nil];
    [self setRightSwitch:nil];
    [self setDoSomeThingButton:nil];
    [super viewDidUnload];
}
- (IBAction)textFieldDoneEditing:(id)sender
{
    [sender resignFirstResponder];
}

- (IBAction)backgroundTap:(id)sender
{
    [self.nameField resignFirstResponder];
    [self.numberField resignFirstResponder];
}

- (IBAction)toggleControls:(UISegmentedControl *)sender
{
    if (sender.selectedSegmentIndex == kSwitchesSegmentIndex)
    {
        self.leftSwitch.hidden = NO;
        self.rightSwitch.hidden = NO;
        self.doSomeThingButton.hidden = YES;
    }
    else
    {
        self.leftSwitch.hidden = YES;
        self.rightSwitch.hidden = YES;
        self.doSomeThingButton.hidden = NO;
    }
}

- (IBAction)switchChanged:(UISwitch *)sender
{
    BOOL setting = sender.isOn;
    [self.leftSwitch setOn:setting animated:YES];
    [self.rightSwitch setOn:setting animated:YES];
}

- (IBAction)buttonPressed:(id)sender {
}


- (IBAction)sliderChanged:(UISlider *)sender
{
    int progressAsInt = lroundf(sender.value);
    self.sliderLabel.text = [NSString stringWithFormat:@"%d", progressAsInt];
}




@end
