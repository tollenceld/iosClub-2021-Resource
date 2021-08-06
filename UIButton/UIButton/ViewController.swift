//
//  ViewController.swift
//  UIButton
//
//  Created by 半斤 on 2020/8/18.
//  Copyright © 2020 半斤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //MARK: 初始化but
        let But:UIButton = UIButton.init(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        But.backgroundColor = .gray
        // 设置背景颜色
        But.layer.cornerRadius = 23
        // 设置圆角
        But.setTitle("按下", for: .normal)
        // 设置普通状态文字
        But.setTitle("没有按下", for: .highlighted)
        // 设置高亮状态文字
        But.setTitle("禁用状态", for: .disabled)
        // 设置禁用状态文字
        But.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        // 设置文字大小
        But.titleEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 2, right: 2 )
        // 设置文字位置
        But.setTitleColor(UIColor.black, for: .normal)
        // 设置文字颜色
        But.titleLabel?.lineBreakMode  = .byTruncatingHead
        // 设置按钮文字比较长，显示不完全情况下的处理
        But.setImage(UIImage(named: "1"), for: .normal)
        // 设置图片
        But.imageView?.contentMode = .scaleToFill
        // 设置图片展示在button中的位置
        But.imageEdgeInsets = UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
        // 图片边距
        //MARK: 设置点击属性，默认为ture
        But.addTarget(self, action: #selector(tapaction), for: .touchDown)
        /*
         touchDown：单点触摸按下事件，点触屏幕
         touchDownRepeat：多点触摸按下事件，点触计数大于1，按下第2、3或第4根手指的时候
         touchDragInside：触摸在控件内拖动时
         touchDragOutside：触摸在控件外拖动时
         touchDragEnter：触摸从控件之外拖动到内部时
         touchDragExit：触摸从控件内部拖动到外部时
         touchUpInside：在控件之内触摸并抬起事件
         touchUpOutside：在控件之外触摸抬起事件
         touchCancel：触摸取消事件，即一次触摸因为放上太多手指而被取消，或者电话打断
         */
        // But.isEnabled = false
        // 是否可以点击
        view.addSubview(But)
        
    }
    
    @objc func tapaction(){
        print("点击")
    }
    
    
}

