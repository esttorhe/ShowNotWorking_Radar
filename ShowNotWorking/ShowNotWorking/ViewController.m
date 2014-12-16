//
//  ViewController.m
//  ShowNotWorking
//
//  Created by Esteban Torres on 15/12/14.
//  Copyright (c) 2014 Esteban Torres. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
	
	UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:@[@"Test"]
																			 applicationActivities:nil];
	[self.navigationController presentViewController:activityVC animated:YES completion:^{
		NSLog(@"This line will never execute on iOS 7.1");
	}];
}

@end
