//
//  ViewController.m
//  account
//
//  Created by Duan Yong on 1/4/12.
//  Copyright (c) 2012 Aiyuji.com. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize buttonSystemConfig;


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (void)systemConfigButtonOnclick:(id)sender
{
    [self showSystemConfigView];
}

//显示系统配置界面
- (void)showSystemConfigView
{
    if (!systemConfigViewController) {
        systemConfigViewController = [[SystemConfigViewController alloc] init];
    }
    
    [self.view addSubview:systemConfigViewController.view];
}



@end
