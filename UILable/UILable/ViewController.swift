//
//  ViewController.swift
//  UILable
//
//  Created by 半斤 on 2020/8/18.
//  Copyright © 2020 半斤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//MARK: 设置label
        let label = UILabel(frame:CGRect(x:30,y:100,width:200,height:40))
        // 创建文本，命名坐标长宽高
        
        label.backgroundColor=UIColor.cyan
        // 设置背景颜色
        
        label.text="xingweixin zhamaotu "
        // 设置文本字
        
//MARK: 字体设置
        label.font=UIFont(name:"Zapfino",size:15)
        // 设置字体大小和样式
        
        label.font=UIFont.systemFont(ofSize:20)
        // 设置字体大小
        
        label.textAlignment = .center
        // 设置字体居中
        
        label.numberOfLines=0
        // 设置文本多行显示
        
        label.shadowColor=UIColor.gray

        label.shadowOffset=CGSize(width:1.5,height:1.5)
        
        // 设置阴影
        
// MARK: 设置tag
//        label.tag = 0
//        // 设置
//
//        let getTagView = view.viewWithTag(0) as! UILabel
//        // 获取方法
        
        view.addSubview(label)
    }


}

