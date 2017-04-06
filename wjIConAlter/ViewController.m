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
        return;
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



/*
 class ViewController: UIViewController {
 
 override func viewDidLoad() {
 super.viewDidLoad()
 }
 
 @IBAction func changeAppIcon(_ sender: Any) {
 
 if UIApplication.shared.supportsAlternateIcons {
 print("you can change this app's icon")
 }else {
 print("you cannot change this app's icon")
 return
 }
 
 if let name = UIApplication.shared.alternateIconName {
 // CHANGE TO PRIMARY ICON
 UIApplication.shared.setAlternateIconName(nil) { (err:Error?) in
 print("set icon error：\(String(describing: err))")
 }
 print("the alternate icon's name is \(name)")
 } else {
 // CHANGE TO ALTERNATE ICON
 UIApplication.shared.setAlternateIconName("blackBgColor") { (err:Error?) in
 print("set icon error：\(String(describing: err))")
 }
 }
 }
 
 }

 */


@end
