//
//  AppDelegate.m
//  KLChatText
//
//  Created by 宇航 on 2017/9/13.
//  Copyright © 2017年 青岛市北区. All rights reserved.
//

#import "AppDelegate.h"
#import <HyphenateLite/HyphenateLite.h>
#import "EaseUI.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    //AppKey:注册的appKey(在你创建项目的时候会获得appKey) //apnsCertName:推送证书名(不需要加后缀)
    EMOptions *options = [EMOptions optionsWithAppkey:@"1171170307115695#testdemo"];
    options.apnsCertName = @"istore_dev";
    [[EMClient sharedClient] initializeSDKWithOptions:options];
    
    EMError *error = [[EMClient sharedClient] registerWithUsername:@"8001" password:@"111111"];
    if (error==nil) {
        NSLog(@"注册成功");
    }
    
    return YES;
}

// APP进入后台
- (void)applicationDidEnterBackground:(UIApplication *)application
{
    [[EMClient sharedClient] applicationDidEnterBackground:application];
}

// APP将要从后台返回
- (void)applicationWillEnterForeground:(UIApplication *)application
{
    [[EMClient sharedClient] applicationWillEnterForeground:application];
}


@end
