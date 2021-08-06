//
//  ViewController.swift
//  CAAnimationGroup
//
//  Created by 半斤 on 2020/9/11.
//  Copyright © 2020 半斤. All rights reserved.
//  音频起伏动画

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var replicatorAnimation: UIView!
    @IBOutlet weak var basicVIew: UIView!
    //MARK:-demo
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        //创造一个红色圆形layer
//        let layer = CALayer()
//        layer.bounds = CGRect(x: 0, y: 0, width: 30, height: 30)
//        layer.position = CGPoint(x: self.view.center.x - 50, y: self.view.center.y - 50)
//        layer.backgroundColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
//        layer.cornerRadius = 15
//        self.view.layer.addSublayer(layer)
//        //创建一个透明度动画
//        let ani1 = CABasicAnimation(keyPath: "opacity")
//        ani1.fromValue = 0
//        ani1.toValue = 1
//        ani1.duration = 1.5
//        ani1.autoreverses = true //确定接收方在完成时是否反向播放
//        //创建一个缩放动画
//        let ani2 = CABasicAnimation(keyPath: "transform.scale")
//        ani2.toValue = 1.5
//        ani2.fromValue = 0.5
//        ani2.duration = 1.5
//        ani2.autoreverses = true
//        //创建一个动画组, 将之前创建的透明度动画和缩放动画加入到这个动画组中
//        let ani = CAAnimationGroup()
//        ani.animations = [ani1, ani2]
//        ani.duration = 1.5
//        ani.repeatCount = MAXFLOAT //重复播放最多次数
//        ani.autoreverses = true
//        //将动画组添加到layer
//        layer.add(ani, forKey: "")
//        //创建CAReplicatorLayer
//        let rec = CAReplicatorLayer()
//        rec.instanceCount = 3
//        rec.instanceDelay = 0.5
//        rec.instanceTransform = CATransform3DMakeTranslation(50, 0, 0)
//        rec.addSublayer(layer)
//        self.view.layer.addSublayer(rec)
//        let rec2 = CAReplicatorLayer()
//        rec2.instanceCount = 3
//        rec2.instanceDelay = 0.5
//        rec2.instanceTransform = CATransform3DMakeTranslation(0, 50, 0)
//        rec2.addSublayer(rec)
//        self.view.layer.addSublayer(rec2)
//        print("hh")
//    }
//
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let replicatorLayer = CAReplicatorLayer()
        replicatorLayer.bounds = CGRect(x: replicatorAnimation.frame.origin.x, y: replicatorAnimation.frame.origin.y, width: replicatorAnimation.frame.size.width, height: replicatorAnimation.frame.size.height)
        replicatorLayer.anchorPoint = CGPoint(x: 0, y: 0)
        replicatorLayer.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)
        replicatorAnimation.layer.addSublayer(replicatorLayer)
        let rectangleWidth = CALayer()
        rectangleWidth.bounds = CGRect(x: 0, y: 0, width: 260, height: 10)
        rectangleWidth.position = CGPoint(x: 190, y: 240)
        rectangleWidth.cornerRadius = 4
        rectangleWidth.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.view.layer.addSublayer(rectangleWidth)
        let rectangle = CALayer()
        rectangle.bounds = CGRect(x: 0, y: 0, width: 30, height: 120)
        rectangle.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle.position = CGPoint(x: replicatorAnimation.frame.origin.x + 30, y: replicatorAnimation.frame.origin.y + 160)
        rectangle.cornerRadius = 2
        rectangle.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        replicatorLayer.addSublayer(rectangle)
        basicVIew.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.basicVIew.layer.cornerRadius = 40
        
        let moveRectangle = CABasicAnimation(keyPath: "position.y")
        moveRectangle.toValue = rectangle.position.y - 100
        moveRectangle.duration = 0.7
        moveRectangle.autoreverses = true
        moveRectangle.repeatCount = HUGE
        rectangle.add(moveRectangle, forKey: nil)
        replicatorLayer.instanceCount = 6
        replicatorLayer.instanceTransform = CATransform3DMakeTranslation(40, 0, 0)
        replicatorLayer.instanceDelay = 0.3
        replicatorLayer.masksToBounds = true

        
    }
    
    


}

