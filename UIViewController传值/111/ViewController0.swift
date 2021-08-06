//
//  ViewController0.swift
//  111
//
//  Created by Blacour on 2020/8/28.
//  Copyright © 2020 Blacour. All rights reserved.
//

import UIKit

class ViewController0: UIViewController {
    
    var data: String?
    var label = UILabel()
    var delegate: ViewController0Protocol?
    
    override func viewDidLoad() {
        print(data)
        super.viewDidLoad()
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 30))
        button.setTitle("BACK", for: UIControl.State())
        button.addTarget(self, action: #selector(ret), for: .touchUpInside)
        self.view.addSubview(button)
        
        label.frame = CGRect(x: 120, y: 200, width: 280, height: 30)
        label.text = data
        self.view.addSubview(label)
        
    }
    
    @objc func ret(){
        delegate?.sentData(data: "第二个界面传过来的值")
        self.dismiss(animated: true, completion: nil)
    }

}

protocol ViewController0Protocol {
    func sentData(data:String)
}
