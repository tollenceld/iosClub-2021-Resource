//
//  ViewController.swift
//  UISlider
//
//  Created by 半斤 on 2020/8/20.
//  Copyright © 2020 半斤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let slider = UISlider(frame: CGRect(x: 20, y: 100, width: 200, height: 50))
        
        slider.maximumValue = 10
        
        slider.minimumValue = 0
        
        slider .value = 5
        
        slider.minimumTrackTintColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
        slider.maximumTrackTintColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        slider.thumbTintColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
        
//        slider.transform = CGAffineTransform(rotationAngle: CGFloat(-M_PI_2))
//        //让滑块垂直旋转90度
//
//        slider.addTarget(self, action: #selector(change), for: .valueChanged)
//
//
//        //设置Slider组件图片
//        slider.setMaximumTrackImage(UIImage(named:"Maximage1"), for: .normal)
//        slider.setMinimumTrackImage(UIImage(named:"MinImage2"), for: .normal)
//        slider.setThumbImage(UIImage(named: "thumInage"), for: .normal)
//        slider.isContinuous = false//设置在停止滑动时才出发响应事件
        self.view.addSubview(slider)
    }
    
    
    @objc func change (slider:UISlider) {
        print(slider.value)
    }
    
    
}

