//
//  ViewController.swift
//  UIViewTransAnimation
//
//  Created by 半斤 on 2020/9/10.
//  Copyright © 2020 半斤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var animationView:UIView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        animationView = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 780))
        animationView?.backgroundColor  = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        self.view.addSubview(animationView!)
        
    }
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        UIView.transition(with: animationView!, duration: 3, options: [.transitionCurlUp], animations:{
//
//        },completion: nil)x
//    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let otherView = UIView(frame: CGRect(x: 20, y: 100, width: 200, height: 300))
        otherView.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        UIView.transition(from: animationView!,to: otherView, duration: 3, options: .transitionFlipFromRight, completion: nil)
    }



}

