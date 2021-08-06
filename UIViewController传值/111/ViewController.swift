//
//  ViewController.swift
//  111
//
//  Created by Blacour on 2020/8/28.
//  Copyright © 2020 Blacour. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ViewController0Protocol {
    func sentData(data: String) {
        self.label?.text = data
    }
    
    var label: UILabel?
    
    @IBAction func touch(_ sender: UIButton) {
        self.present(ViewController0(), animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label = UILabel(frame: CGRect(x: 20, y: 100, width: 280, height: 30))
        self.view.addSubview(label!)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "next" {
            let destinationViewController = segue.destination as! ViewController0
            destinationViewController.data = "第一个界面传过来的值"
            destinationViewController.delegate = self
        }

    }
    

    
    
    
    

}

