//
//  ViewController.m
//  KLChatText
//
//  Created by 宇航 on 2017/9/13.
//  Copyright © 2017年 青岛市北区. All rights reserved.
//

#import "ViewController.h"
#import <HyphenateLite/HyphenateLite.h>
#import "EaseUI.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    EMError *error = [[EMClient sharedClient] loginWithUsername:@"8001" password:@"111111"];
    if (!error) {
        NSLog(@"登录成功");
    }
    
    UIButton * kefu001 = [[UIButton alloc] initWithFrame:CGRectMake(30, 100, [UIScreen mainScreen].bounds.size.width-60, 40)];
    [kefu001 setTitle:@"客服001" forState:UIControlStateNormal];
    kefu001.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:kefu001];
    
    [kefu001 addTarget:self action:@selector(chat001) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)chat001{
    //环信ID:@"8001"
    //聊天类型:EMConversationTypeChat
    EaseMessageViewController *chatController = [[EaseMessageViewController alloc] initWithConversationChatter:@"test" conversationType:EMConversationTypeChat];
    chatController.title = @"客户服务";
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:chatController];
    [self presentViewController:nav animated:YES completion:^{
        
    }];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
   
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
    });
    
}



@end
