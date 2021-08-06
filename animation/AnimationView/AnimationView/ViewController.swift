//
//  ViewController.swift
//  AnimationView
//
//  Created by 半斤 on 2020/9/10.
//  Copyright © 2020 半斤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var animationView:UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //初始化视图
        animationView = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        //设置背景色
        animationView?.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        //将其添加到当前视图上
        animationView?.layer.cornerRadius = 3
        self.view.addSubview(animationView!)
    }
    //
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //这里采用了后置闭包的写法
        UIView.animate(withDuration: 2, animations: {
            //在2s内animationView的中心点由（150，150）移动到（150，300）
            self.animationView?.center = CGPoint(x: 150, y: 300)
        })
            {(finish) in
            //这个闭包会在上一层动画结束后完成调用
            UIView.animate(withDuration: 2, animations: {
                //在2s内animationView的中心点由（150，150）移动到（150，300）
                self.animationView?.center = CGPoint(x: 150, y: 150)
            })
        }
        
    }
    
}

