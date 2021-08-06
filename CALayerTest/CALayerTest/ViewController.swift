//
//  ViewController.swift
//  CALayerTest
//
//  Created by 半斤 on 2020/9/11.
//  Copyright © 2020 半斤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//MARK:颜色渐变
//        let gradientLayer  =  CAGradientLayer()
//        gradientLayer.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)
//        gradientLayer.position = CGPoint(x: 100, y: 100)
//        gradientLayer.colors = [UIColor.init(red: 0.5, green: 0.4, blue: 0.2, alpha: 1.0).cgColor,UIColor.init(red: 0.1, green: 0.7, blue: 0.1, alpha: 1.0).cgColor,UIColor.init(red: 0.2, green: 0.2, blue: 0.7, alpha: 1.0).cgColor]
//        //需要将CAGrafinentLayer类的location属性设置为以NSnumber类型为元素的数组，下面代码表示当红色渲染到五分之一时开始向绿色进行渐变，绿色渲染到二分之一时来是向蓝色进行渐变，当到达十分之七的距离后完成渐变过程，开始渲染为纯蓝色
//        gradientLayer.locations =  [NSNumber(value: 0.2),NSNumber(value: 0.5),NSNumber(value: 0.7)]
//        //startPoint与endPoint属性用于设置渐变的起始位置
//        gradientLayer.startPoint  = CGPoint(x: 0, y: 0)
//        gradientLayer.endPoint  =  CGPoint(x: 1, y: 1)
//        self.view.layer.addSublayer(gradientLayer)
//MARK:图层复制
//        let replicatorLayer = CAReplicatorLayer()
//        replicatorLayer.position = CGPoint.zero
//        let subLayer = CALayer()
//        subLayer.bounds = CGRect(x: 0, y: 0, width: 20, height: 20)
//        subLayer.position = CGPoint(x: 30, y: 100)
//        subLayer.backgroundColor  = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
//        replicatorLayer.addSublayer(subLayer)
//        //设置每次复制将副本沿x轴平移30个单位
//        replicatorLayer.instanceTransform = CATransform3DMakeTranslation(30, 0, 0)
//        //设置复制副本的个数
//        replicatorLayer.instanceCount = 10
//        self.view.layer.addSublayer(replicatorLayer)
//MARK:内容和边框
//        let shapeLayer = CAShapeLayer()
//        shapeLayer.position = CGPoint.zero
//        let path = CGMutablePath()
//        path.move(to: CGPoint(x: 100, y: 100))
//        path.addLine(to: CGPoint(x: 300, y: 100))
//        path.addLine(to: CGPoint(x: 200, y: 200))
//        path .addLine(to: CGPoint(x: 100, y: 100))
//        shapeLayer.path = path
//        shapeLayer.strokeEnd = 1
//        shapeLayer.fillRule = CAShapeLayerFillRule(rawValue: kCAOnOrderIn)//!
//        shapeLayer.fillColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
//        shapeLayer.strokeColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
//        shapeLayer.lineWidth = 1
//        self.view.layer.addSublayer(shapeLayer)
//MARK:从不同坐标变换视图
//        let keygrameAni = CAKeyframeAnimation(keyPath: "transform.rotation.z")
//        keygrameAni.values = [NSNumber(value: 0),NSNumber(value: M_PI_4),NSNumber(value: M_PI)]
//        keygrameAni.duration = 3
//        self.view.layer.add(keygrameAni,forKey: "")
//        //不推荐
//        let basicAni = CABasicAnimation(keyPath: "transform.rotation.z")
//        basicAni.fromValue = NSNumber(value: 0)
//        basicAni.toValue = NSNumber(value: M_PI)
//        basicAni.duration = 2
//        self.view.layer.add(basicAni,forKey: nil)

//MARK:弹簧效果的阻尼动画
//        let springAni = CASpringAnimation(keyPath: "position.y")
//        springAni.mass = 2
//        springAni.stiffness = 3
//        springAni.damping = 2
//        springAni.toValue = 300
//        springAni.duration = 3
//        let layer = CALayer()
//        layer.position = CGPoint(x: 100, y: 100)
//        layer.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)
//        layer.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
//        self.view.layer.addSublayer(layer)
//        layer.add(springAni,forKey: "")
//MARK:转场动画
//        let transAni = CATransition()
//        transAni.type = CATransitionType.reveal
//        transAni.subtype = CATransitionSubtype.fromBottom
//        let layer = CALayer()
//        layer .position = CGPoint(x: 100, y: 100)
//        layer.bounds = CGRect(x: 0, y: 0, width: 300, height: 300)
//        layer.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
//        layer.add(transAni,forKey: "")
//        self.view.layer.addSublayer(layer)
//MARK:多个动画进行组合
        let basicAni = CABasicAnimation(keyPath: "backgroundColor")
        basicAni.toValue = UIColor.green.cgColor
        let basicAni2 = CABasicAnimation(keyPath: "transform.scale.x")
        basicAni2.toValue = NSNumber(value: 2)
        let groupAni = CAAnimationGroup()
        groupAni.animations = [basicAni,basicAni2]
        groupAni.duration = 2
        let layer = CALayer()
        layer.position = CGPoint(x: 100, y: 100)
        layer.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)
        layer.backgroundColor  = UIColor.red.cgColor
        layer.add(groupAni,forKey: "")
        self.view.layer.addSublayer(layer)
        

    }


}

