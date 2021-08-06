//
//  ViewController.swift
//  UIProgressView
//
//  Created by 半斤 on 2020/8/20.
//  Copyright © 2020 半斤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let slider = UISlider(frame: CGRect(x: 20, y: 100, width: 200, height: 50))//创建拖动控制器
    let progressView = UIProgressView(progressViewStyle: .default)//创建进度条控件实例
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
        
        slider.maximumValue = 10
        
        slider.minimumValue = 0
        
        slider .value = 5
        
        slider.minimumTrackTintColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
        slider.maximumTrackTintColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        slider.thumbTintColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
        slider.addTarget(self, action: #selector(change), for: .valueChanged)
        
      
        progressView.frame = CGRect(x: 20, y: 100, width: 280, height: 10)//设置位置和宽度
        progressView.progress = 0.5//设置当前进度（初始进度）
        progressView.progressTintColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1) //设置已走过的进度条颜色
        progressView.trackTintColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1) //设置为走过的进度条颜色
        // progressView.setProgress(0.5, animated: true)// 启用进度条加载动画
        self.view.addSubview(progressView)
        self.view.addSubview(slider)
        
    }
    @objc func change (slider:UISlider) {
        var math = slider.value*0.1
        progressView.progress = math
        
    }
    
    
    
}

