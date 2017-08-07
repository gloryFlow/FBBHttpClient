//
//  ViewController.m
//  FBBHttpClient
//
//  Created by guobingwei on 2017/7/19.
//  Copyright © 2017年 demo. All rights reserved.
//

#import "ViewController.h"
#import <SDHttpClient/HttpMobApi.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self demoButtonAction];
}

- (void)demoButtonAction {
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                   @"杭州",@"city",
                                   @"浙江",@"province",
                                   @"174d9f1f86365",@"key",
                                   nil];
    
    NSString *url = @"v1/weather/query";
    [HttpMobApi get:url params:params success:^(id responseObj) {
        NSLog(@"responseObj:%@",responseObj);
    } failure:^(HttpError *e) {
        NSLog(@"e:%@",e);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
