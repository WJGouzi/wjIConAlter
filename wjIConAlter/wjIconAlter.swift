//
//  wjIconAlter.swift
//  wjIConAlter
//
//  Created by gouzi on 2017/4/6.
//  Copyright © 2017年 gouzi. All rights reserved.
//

import UIKit

class wjIconAlter: UIViewController {

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
                    print("error : \(String(describing: err))")
                }
                print("the alternate icon's name is \(name)")
            } else {
                // CHANGE TO ALTERNATE ICON
                UIApplication.shared.setAlternateIconName("blackBgColor") { (err:Error?) in
                    print("error : \(String(describing: err))")
            }
        }
    }
}
