//
//  ViewController.m
//  DiDi
//
//  Created by taobaichi on 16/7/29.
//  Copyright © 2016年 taobaichi. All rights reserved.
//

#import "ViewController.h"

#import <DIOpenSDK/DIOpenSDK.h>
#import <DIOpenSDK/DIOpenSDKRegisterOptions.h>
@interface ViewController ()<DIOpenSDKDelegate>

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)DIDIAction:(UIButton *)sender {
    
//    DIDIViewController *vc = [[DIDIViewController alloc] init];
    DIOpenSDKRegisterOptions *modelParam = [[DIOpenSDKRegisterOptions alloc] init];
    modelParam.fromaddr = @"北京市朝阳区财满街6号楼1201";
    
    modelParam.toaddr = @"北京市朝阳区十里堡北里小区";

    [DIOpenSDK showDDPage:self animated:YES params:modelParam delegate:self];
    
}


- (void)diopensdkMainPageClose
{
    NSLog(@"关闭了打车页面");
}
@end
