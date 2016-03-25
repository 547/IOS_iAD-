//
//  ViewController.m
//  iADTest
//
//  Created by mac on 16/3/25.
//  Copyright © 2016年 Seven. All rights reserved.
//

#import "ViewController.h"
#import <iAd/iAd.h>
@interface ViewController ()<ADBannerViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self iADTest];
}
/**
 IAD是苹果推出的广告平台，它可以帮助开发者从应用程序中获取收入。
 
 1. 创建一个简单的View based application
 2. 选择项目文件，然后选择目标，然后选择框架并添加 iAd.framework。
 3. 更新 ViewController.h
 */
-(void)iADTest
{
    //创建一个广告条视图
    ADBannerView *bannerView=[[ADBannerView alloc]initWithFrame:CGRectMake(0, 21, self.view.frame.size.width, 50)];
    bannerView.delegate=self;//设置代理
    bannerView.backgroundColor=[UIColor yellowColor];
    [self.view addSubview:bannerView];
    
}
#pragma mark===ADBannerViewDelegate
//接受广告失败是调用的方法
-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    NSLog(@"error===%@",error);
}
//已经加载广告
-(void)bannerViewDidLoadAd:(ADBannerView *)banner
{
    NSLog(@"已经加载广告");
}
//将要加载广告
-(void)bannerViewWillLoadAd:(ADBannerView *)banner
{
 NSLog(@"将要加载广告");
}
//查看广告结束，回到本页面调用的方法
-(void)bannerViewActionDidFinish:(ADBannerView *)banner
{
    NSLog(@"bannerViewActionDidFinish");
}










- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
