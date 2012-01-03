//
//  AppDelegate.h
//  account
//
//  Created by Duan Yong on 1/4/12.
//  Copyright (c) 2012 Aiyuji.com. All rights reserved.
//

#import <UIKit/UIKit.h>



@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    //屏幕宽度
    float frameWidth;
    
    //标题区域的坐标及高
    float titleX, titleY, titleHeight;

    //主体区域的坐标及高
    float contentX, contentY, contentHeight;
    
    //控制区域的坐标及高
    float controllerX, controllerY, controllerHeight;
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;



//返回程序的标题栏区域，在信号栏之下
+ (CGRect) getTitleBounds;
- (CGRect) getTitleBounds;

//返回程序的主体区域，在屏幕中部用来显示数据部分
+ (CGRect) getContentBounds;
- (CGRect) getContentBounds;

//返回程序的控制区域，在屏幕底部用来控制显示什么界面
+ (CGRect) getControllerBounds;
- (CGRect) getControllerBounds;


@end
