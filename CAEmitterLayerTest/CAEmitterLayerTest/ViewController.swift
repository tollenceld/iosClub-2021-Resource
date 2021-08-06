//
//  ViewController.swift
//  CAEmitterLayerTest
//
//  Created by 半斤 on 2020/9/13.
//  Copyright © 2020 半斤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        let fireEmitter = CAEmitterLayer()
        
        fireEmitter.emitterPosition = CGPoint(x: 200, y: 600)
        fireEmitter.emitterSize = CGSize(width: self.view.bounds.size.width-100, height: 20)
        fireEmitter.renderMode = CAEmitterLayerRenderMode(rawValue: kCAOnOrderOut)
        fireEmitter.emitterShape = .sphere
        fireEmitter.emitterMode = .volume
        
        
        
        let fireCell = CAEmitterCell()
        fireCell.birthRate = 1500
        fireCell.lifetime = 3.0
        fireCell.lifetimeRange = 1.5
        fireCell.color = #colorLiteral(red: 0.4620226622, green: 0.8382837176, blue: 1, alpha: 0.43)
        fireCell.contents = UIImage(named: "emtter")?.cgImage
        fireCell.velocity = 120
        fireCell.velocity = 60
        fireCell.emissionLongitude = CGFloat(M_PI+M_PI_2)
        fireCell.emissionRange = CGFloat(M_PI_2)
        fireCell.scaleSpeed  =  0.5
        fireCell.spin  = 0.2
        

        let smokeCell = CAEmitterCell()
        smokeCell.birthRate = 1000
        smokeCell.lifetime  = 4.0
        smokeCell.lifetimeRange = 1.5
        smokeCell.color = UIColor(red: 1, green: 1, blue: 1, alpha: 0.5).cgColor
        smokeCell.contents = UIImage(named: "emtter2")?.cgImage
        smokeCell.velocity = 200
        smokeCell.velocity = 100
        smokeCell.emissionLongitude = CGFloat(M_PI+M_PI_2)
        smokeCell.emissionRange =  CGFloat(M_PI_2)

//        let smokeCell2 = CAEmitterCell()
//        smokeCell2.birthRate = 1000
//        smokeCell2.lifetime  = 6.0
//        smokeCell2.lifetimeRange = 1.5
//        smokeCell2.color = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
//        smokeCell2.contents = UIImage(named: "emtter")?.cgImage
//        smokeCell2.velocity = 250
//        smokeCell2.velocity = 140
//        smokeCell2.emissionLongitude = CGFloat(M_PI+M_PI_2)
//        smokeCell2.emissionRange =  CGFloat(M_PI_2)
        
        fireEmitter.emitterCells = [fireCell,smokeCell]
        self.view.layer.addSublayer(fireEmitter)
        
        let fireEmitter2 = CAEmitterLayer()
        fireEmitter2.emitterPosition = CGPoint(x: 100, y: 100)
        fireEmitter2.emitterSize = CGSize(width: self.view.bounds.size.width-100, height: 20)
        fireEmitter2.renderMode = CAEmitterLayerRenderMode(rawValue: kCAOnOrderOut)
        let fireCell2 = CAEmitterCell()
        fireCell2.birthRate = 500
        fireCell2.lifetime = 3.0
        fireCell2.lifetimeRange = 1.5
        fireCell2.color = UIColor(red: 0.8, green: 0.4, blue: 0.2, alpha: 0.1).cgColor
        fireCell2.contents = UIImage(named: "emtter2")?.cgImage
        fireCell2.velocity = 120
        fireCell2.velocity = 60
        fireCell2.emissionLongitude = CGFloat(M_PI+M_PI_2)
        fireCell2.emissionRange = CGFloat(M_PI_2)
        fireCell2.scaleSpeed  =  0.5
        fireCell2.spin  = 0.2
//        let smokeCell2 = CAEmitterCell()
//        smokeCell2.birthRate = 500
//        smokeCell2.lifetime  = 4.0
//        smokeCell2.lifetimeRange = 1.5
//        smokeCell2.color = UIColor(red: 1, green: 1, blue: 1, alpha: 0.05).cgColor
//        smokeCell2.contents = UIImage(named: "emtter2")?.cgImage
//        smokeCell2.velocity = 200
//        smokeCell2.velocity = 100
//        smokeCell2.emissionLongitude = CGFloat(M_PI+M_PI_2)
//        smokeCell2.emissionRange =  CGFloat(M_PI_2)
//
//        fireEmitter2.emitterCells = [fireCell2,smokeCell2]
//        self.view.layer.addSublayer(fireEmitter2)
//        
//        
        
        
    }


}

