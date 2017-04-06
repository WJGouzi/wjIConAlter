//
//  ViewController.m
//  wjIConAlter
//
//  Created by gouzi on 2017/4/6.
//  Copyright © 2017年 gouzi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


// 需要在plist文件中对应用图标进行设置不然会报`CFBundleAlternateIcons`找不到的错误提示

/**
 切换应用程序的图标
 */
- (IBAction)changeIconAction:(UIButton *)sender {
    
    if ([UIApplication sharedApplication].supportsAlternateIcons) {
        NSLog(@"系统支持切换应用图标");
    } else {
        NSLog(@"系统不支持切换应用图标");
    }
    
    if ([UIApplication sharedApplication].alternateIconName) {
        [[UIApplication sharedApplication] setAlternateIconName:nil completionHandler:^(NSError * _Nullable error) {
            NSLog(@"the alternate icon's error is:%@", error.description);
        }];
    } else {
        [[UIApplication sharedApplication] setAlternateIconName:@"blackBgColor" completionHandler:^(NSError * _Nullable error) {
            NSLog(@"the alternate icon's error is:%@", error);
        }];
    }
}


@end
