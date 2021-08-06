//
//  ViewControllerFour.swift
//  UITaBarController
//
//  Created by 半斤 on 2020/8/31.
//  Copyright © 2020 半斤. All rights reserved.
//

import UIKit

class ViewControllerFour: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarItem.title = "个人中心"
        self.view.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        self.tabBarItem.badgeValue = "新消息"
        self.view.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
