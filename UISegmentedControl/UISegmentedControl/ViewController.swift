//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by 半斤 on 2020/8/19.
//  Copyright © 2020 半斤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let segmentedControl = UISegmentedControl(items: ["按钮","按钮2","按钮3333333","按钮4"])
        
        segmentedControl.frame = CGRect(x: 20, y: 20, width: 300, height: 50)
        
        segmentedControl.tintColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        
        segmentedControl.isMomentary = true
        //该值默认为false，若设置为true时，按下按钮会成选中状态，抬起手之后又会变为正常状态
        segmentedControl.addTarget(self, action: #selector(sele), for:.valueChanged)
        //
        //        segmentedControl.insertSegment(withTitle: "按钮5", at: 0, animated: true)
        //        //插入新的文字item
        segmentedControl.insertSegment(with: UIImage(named: "image")?.withRenderingMode(.alwaysOriginal), at: 4, animated: true)
        //插入新的图片,一共传传递三个参数，第一个决定了item的文字或图片，第二个确定了插入位置，第三个设置是否带有动画效果
        
        segmentedControl.removeSegment(at: 0, animated: true)
        //删除某个位置的item
        
        segmentedControl.setTitle("new", forSegmentAt: 2)
        //        segmentedControl.setImage(UIImage(named: "image")?.withRenderingMode(.alwaysOriginal), forSegmentAt: 1)
        
        segmentedControl.setWidth(80, forSegmentAt: 0)
        //设置单个item的宽度
        segmentedControl.apportionsSegmentWidthsByContent  = true
        //当属性为true时，每个item根据内容自适应其宽度，与setWidth适用
        self.view.addSubview(segmentedControl)
    }
    
    @objc func sele(seg:UISegmentedControl){
        print("选择\(seg.selectedSegmentIndex)")
    }
    
    
}

