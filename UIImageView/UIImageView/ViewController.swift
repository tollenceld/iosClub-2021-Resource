//
//  ViewController.swift
//  UIImageView
//
//  Created by 半斤 on 2020/8/18.
//  Copyright © 2020 半斤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let url = URL(string: "http://pic150.nipic.com/file/20171224/8669400_090903351033_2.jpg")
        
        let data = try! Data(contentsOf: url!)
        
        let newImage = UIImage(data: data)
        
        let imageview = UIImageView(image:newImage)
        
        self.view.addSubview(imageview)
        
        
        
        
       
        
    }

}

