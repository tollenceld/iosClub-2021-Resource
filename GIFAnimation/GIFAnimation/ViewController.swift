//
//  ViewController.swift
//  GIFAnimation
//
//  Created by 半斤 on 2020/9/10.
//  Copyright © 2020 半斤. All rights reserved.
//

import UIKit
import ImageIO

class ViewController: UIViewController {
    func playGIFOnImageView(name:String,imageView:UIImageView) {
        let path = Bundle.main.path(forResource: name, ofType: "gif")
        let url = URL.init(fileURLWithPath: path!)
        let source = CGImageSourceCreateWithURL(url as CFURL, nil)
        let count = CGImageSourceGetCount(source!)
        var imageArray = Array<UIImage>()
        var imagesWidth = Array<Int>()
        var imagesHeight = Array<Int>()
        var time:Int = Int()
        
        for index in 0..<count {
            let image = CGImageSourceCreateImageAtIndex(source!, index, nil)
            imageArray.append(UIImage(cgImage: image!))
            let info = CGImageSourceCopyPropertiesAtIndex(source!, index, nil) as! Dictionary<String,AnyObject>
            let width = Int(info[kCGImagePropertyPixelWidth as String]! as!NSNumber)
            let height = Int(info[kCGImagePropertyPixelHeight as String]! as!NSNumber)
            imagesWidth.append(width)
            imagesHeight.append(height)
            
            let timeDic = info[kCGImagePropertyGIFDictionary as String] as! Dictionary<String,AnyObject>
            time += Int(timeDic[kCGImagePropertyGIFDelayTime as String] as! NSNumber)
            
        }
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        imageView.animationImages = imageArray
        imageView.animationDuration = TimeInterval(time)
        imageView.animationRepeatCount = 0
        imageView.startAnimating()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        self.view.addSubview(imageView)
        self.playGIFOnImageView(name: "animation", imageView: imageView)
    }


}

