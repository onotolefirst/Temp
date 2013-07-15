//
//  ViewController.h
//  TestControlFun
//
//  Created by Онотоле on 15.07.13.
//  Copyright (c) 2013 Онотоле. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController 

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *numberField;
- (IBAction)textFieldDoneEditing:(id)sender;
- (IBAction)backgroundTap:(id)sender;



@end
