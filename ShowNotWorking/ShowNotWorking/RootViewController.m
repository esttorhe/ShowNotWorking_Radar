//
//  RootViewController.m
//  ShowNotWorking
//
//  Created by Esteban Torres on 15/12/14.
//  Copyright (c) 2014 Esteban Torres. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (IBAction)pushButton_tapped:(UIButton *)sender {
	UIViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
	[self.navigationController pushViewController:vc animated:YES];
}

@end
