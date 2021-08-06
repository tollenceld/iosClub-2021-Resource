//
//  ViewController.swift
//  UIAlertAction
//
//  Created by 半斤 on 2020/9/1.
//  Copyright © 2020 半斤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func popAlert(_ sender: Any) {
//        let alertController = UIAlertController(title: "我是弹窗", message: "这里是内容", preferredStyle: .alert)
//        let alertAction = UIAlertAction(title: "确定", style: .default, handler: nil)
//        let alertAction2 = UIAlertAction(title: "取消", style: .cancel, handler: nil)
//        alertController.addAction(alertAction)
//        alertController.addAction(alertAction2)
//        self.present(alertController,animated: true,completion: nil)
//       单纯弹窗
        let alertController = UIAlertController(title: "我是弹窗", message: "这里是内容", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "登陆", style: .default) {(action) in print(alertController.textFields?.first?.text ?? "未输入文字")
        
            
        }
        
            let alertAction2 = UIAlertAction(title: "取消", style: .cancel, handler: nil)
            alertController.addAction(alertAction)
            alertController.addAction(alertAction2)
        alertController.addTextField {
            (textField) in
            textField.placeholder = "请输入用户名"
        }
        alertController.addTextField {
            (textField) in textField.placeholder = "请输入密码"
            textField.isSecureTextEntry = true
        }
            self.present(alertController,animated: true,completion: nil)
        // 文本输入框弹窗
    }
    
    @IBAction func popSheet(_ sender: Any) {
        let alertController = UIAlertController(title: "我是抽屉弹窗", message: "这里是内容", preferredStyle: .actionSheet)
        let alertAction = UIAlertAction(title: "确定", style: .default){
            (action) in
            print(alertController.textFields?.first?.text ?? "未输入文本")
        }
        let alertAction2 = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        alertController.addAction(alertAction)
        alertController.addAction(alertAction2)
        self.present(alertController,animated: true,completion: nil)
    }
}

