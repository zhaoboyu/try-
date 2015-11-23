//
//  testViewController.m
//  new
//
//  Created by chinat2t on 14-11-3.
//  Copyright (c) 2014年 chinat2t. All rights reserved.
//

#import "testViewController.h"
#import "XWAlterview.h"
@interface testViewController ()

@end

@implementation testViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    button.frame=CGRectMake(100, 100, 100, 100);
    [button setTitle:@"test1" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(btnclick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    UIButton *Testbutton=[UIButton buttonWithType:UIButtonTypeCustom];
    Testbutton.frame=CGRectMake(100, 200, 100, 100);
    [Testbutton setTitle:@"test2" forState:UIControlStateNormal];
    [Testbutton addTarget:self action:@selector(test) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Testbutton];
    self.view.backgroundColor=[UIColor grayColor];
    // Do any additional setup after loading the view.
}
-(void)btnclick
{
    XWAlterview *alter=[[XWAlterview alloc]initWithTitle:@"登录失败" contentText:@"用户名密码或账号，请重新登录?" leftButtonTitle:@"确定" rightButtonTitle:@"取消"];
    alter.rightBlock=^()
    {
        NSLog(@"右边按钮被点击");
    };
    alter.leftBlock=^()
    {
        NSLog(@"左边按钮被点击");
    };
    alter.dismissBlock=^()
    {
        NSLog(@"窗口即将消失");
    };
    [alter show];
    
}
-(void)test
{
    [XWAlterview showmessage:@"this is a test" subtitle:@"thatright" cancelbutton:@"OK"];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com 
