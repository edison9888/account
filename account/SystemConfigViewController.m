//
//  SystemConfigViewController.m
//  account
//
//  Created by Duan Yong on 1/4/12.
//  Copyright (c) 2012 Aiyuji.com. All rights reserved.
//

#import "SystemConfigViewController.h"

@implementation SystemConfigViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // 从数据库中获取系统配置项。如：账户管理、支付类型
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSMutableArray *barItems = [NSMutableArray array];
    
    //添加完成按钮和标题文字
    [barItems addObject: [[[UIBarButtonItem alloc] 
                          initWithTitle:@"确认" 
                          style:UIBarButtonItemStyleDone 
                          target:self 
                          action:@selector(showAccountTypeView)] autorelease]];
    
    UIToolbar *titleBar = [[[UIToolbar alloc] initWithFrame:[AppDelegate getTitleBounds]] autorelease];
    [titleBar setItems:barItems];

    
    [self.view addSubview:titleBar];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

//显示账户类型界面
- (void)showAccountTypeView
{
    NSLog(@"hello");
}

//显示支付类型界面
- (void)showPayTypeView
{
    NSLog(@"hello");
}



@end
