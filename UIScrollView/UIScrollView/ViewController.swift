//
//  ViewController.swift
//  UIScrollView
//
//  Created by 半斤 on 2020/9/1.
//  Copyright © 2020 半斤. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {
    var imageView:UIImageView?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let scrollView = UIScrollView(frame: self.view.frame)
        self.view.addSubview(scrollView)
          //将滚动视图添加到当前界面
        let subView1 = UIView(frame: self.view.frame)
        subView1.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        let subView2  = UIView(frame: CGRect(x: self.view.frame.size.width, y:  0, width: self.view.frame.size.width,  height: self.view.frame.size.height))
        subView2.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        //添加 两个内容视图
        scrollView.addSubview(subView2)
        scrollView.addSubview(subView1)
        scrollView.contentSize = CGSize(width: self.view.frame.size.width*2, height: self.view.frame.size.height)//width和height后的倍数代表整个scrollview的宽高
        scrollView.alwaysBounceVertical = false
        //设置始终开启竖直方向的回弹效果
        scrollView.alwaysBounceHorizontal = false
        //设置始终开启水平方向的回弹效果
        scrollView.showsVerticalScrollIndicator =  false
        //显示竖直方向的滚动条
        scrollView.showsHorizontalScrollIndicator = false
        //显示水平方向的滚动条
        scrollView.isPagingEnabled =  true
        
        
        
        
//        scrollView.delegate = self
//       imageView  = UIImageView(image: UIImage(named: "image"))
//        imageView?.frame  = CGRect(x: 0, y: 0, width: 1811, height: 1021)
//        scrollView.addSubview(imageView!)
//        scrollView.contentSize  = self.view.frame.size
//
//        scrollView.minimumZoomScale = 0.5
//        scrollView.maximumZoomScale = 2
        
        
    }
//    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
//        return imageView!
//    }


}

