//
//  ViewController.h
//  account
//
//  Created by Duan Yong on 1/4/12.
//  Copyright (c) 2012 Aiyuji.com. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "SystemConfigViewController.h"


@interface ViewController : UIViewController
{
    SystemConfigViewController *systemConfigViewController;
}



@property (nonatomic, retain) IBOutlet UIButton *buttonSystemConfig;




//显示系统配置页面
- (void) showSystemConfigView;


//按下系统配置页面
- (IBAction) systemConfigButtonOnclick:(id)sender;


@end
