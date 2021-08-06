//
//  ViewController.swift
//  UIPageControl
//
//  Created by 半斤 on 2020/8/19.
//  Copyright © 2020 半斤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let pageControl = UIPageControl(frame:CGRect(x: 20, y: 200, width: 280, height: 30))
        //实例化UIPageControl
        pageControl.numberOfPages = 10
        //设置页数
        pageControl.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
        //设置背景色
        pageControl.pageIndicatorTintColor  = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        //设置页码点背景色
        pageControl.currentPageIndicatorTintColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        
        pageControl.currentPage = 3
        
        self.view.addSubview(pageControl)
        
        pageControl.addTarget(self, action: #selector(change), for: .valueChanged)
    }
    @objc func change(pageControl:UIPageControl){
        print("当前所在页码:\(pageControl.currentPage)")
    }


}

