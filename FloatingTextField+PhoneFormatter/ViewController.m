//
//  ViewController.m
//  FloatingTextField+PhoneFormatter
//
//  Created by Denis Baluev on 03/11/15.
//  Copyright © 2015 Sequenia. All rights reserved.
//

#import "ViewController.h"
#import "JVFloatLabeledTextField.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet JVFloatLabeledTextField* phoneField;

@property (weak, nonatomic) IBOutlet UILabel* unformattedPhoneNumberLabel;

@property (weak, nonatomic) IBOutlet UITextField* prefixTextField;

@property (weak, nonatomic) IBOutlet UITextField* patternTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addGestureRecognizer: [[UITapGestureRecognizer alloc] initWithTarget: self.view action:@selector(endEditing:)]];
    [self updateUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) updateUI{
    self.prefixTextField.text = self.phoneField.formatter.prefix;
    self.patternTextField.text = self.phoneField.formatter.defaultOutputPattern;
}

- (IBAction) getPhoneNumberAction:(UIButton*)sender{
    NSString* phoneNumber = self.phoneField.phoneNumber ?: @"Nil";
    self.unformattedPhoneNumberLabel.text = phoneNumber;
}

- (IBAction) applyFormatAction:(id)sender{
    self.phoneField.formatter.prefix = self.prefixTextField.text;
    [self.phoneField.formatter setDefaultOutputPattern: self.patternTextField.text];
}

@end
