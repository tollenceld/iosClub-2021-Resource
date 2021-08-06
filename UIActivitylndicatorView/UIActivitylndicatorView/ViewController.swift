//
//  ViewController.swift
//  UIActivitylndicatorView
//
//  Created by 半斤 on 2020/8/20.
//  Copyright © 2020 半斤. All rights reserved.
//
import UIKit
class ViewController: UIViewController{
    var activityIndicator:UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //设置环形滚动条的样式
        activityIndicator = UIActivityIndicatorView(style: .whiteLarge)
        //设置环形滚动条颜色
        activityIndicator.color = UIColor.black
        //设置环形滚动条背景颜色
        activityIndicator.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        //设置位置
//        activityIndicator.center = self.view.center
        activityIndicator.center = CGPoint(x: 50, y: 50)
        //停止转圈时，隐藏(默认为true)
        activityIndicator.hidesWhenStopped = false
        self.view.addSubview(activityIndicator)
        let Tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.play))
        Tap.numberOfTapsRequired = 1
        Tap.numberOfTouchesRequired = 1
        self.view.addGestureRecognizer(Tap)
    }
    @objc func play(){
        //开始转动
        activityIndicator.startAnimating()
        //显示当前状态
        print(activityIndicator.isAnimating)
    }
//    @objc func stop(){
//        //停止转动
//        activityIndicator.stopAnimating()
//        //显示当前转台
//        print(activityIndicator.isAnimating)
//    }
 
    
}
