//
//  ViewController.m
//  PAStepper
//
//  Created by Miroslav Perovic on 12/1/12.
//  Copyright (c) 2012 Pure Agency. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.paStepper.value = 1.03;
    self.paStepper.minimumValue = 1;
    self.paStepper.maximumValue = 50;
    //self.paStepper.editableManually = NO;
    
    // found a bug when we set the value greater than the max value we setted last time, the increase button state was not updated correctly.
    self.paStepper.value = 51;
    self.paStepper.maximumValue = 100;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setPaStepper:nil];

    [super viewDidUnload];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

@end
