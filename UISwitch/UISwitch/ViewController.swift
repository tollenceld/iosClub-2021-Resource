//
//  ViewController.swift
//  UISwitch
//
//  Created by 半斤 on 2020/8/19.
//  Copyright © 2020 半斤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let swi = UISwitch()
        //实例化开关控件
        swi .center = CGPoint(x: 100, y: 100)
        //设置开启状态的颜色
        swi.onTintColor = #colorLiteral(red: 0.5704585314, green: 0.5704723597, blue: 0.5704649091, alpha: 1)//设置开启状态的颜色
        swi.tintColor = #colorLiteral(red: 0.5738074183, green: 0.5655357838, blue: 0, alpha: 1)//设置普通状态的颜色
        swi.thumbTintColor = UIColor.purple//设置开关滑块颜色
        swi.isOn = true
        //设置开关初始状态
        swi.addTarget(self, action: #selector(change), for: .valueChanged)
         self.view.addSubview(swi)
        //添加按钮到视图
    }
    @objc func change(swi:UISwitch) {
        print("开关状态\(swi.isOn)")
    }

    @IBAction func sw(_ sender: Any) {
        print("111")
    }
    
}

