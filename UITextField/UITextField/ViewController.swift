//
//  ViewController.swift
//  UITextField
//
//  Created by 半斤 on 2020/8/18.
//  Copyright © 2020 半斤. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate { //添加遵守协议
    
    
    var textField = UITextField()
    var array = [String]()
    
    
    override func viewDidLoad() {
        //  textField.delegate = self //代理添加到add之后
        textField = UITextField(frame: CGRect(x: 20, y: 100, width: 200, height: 30)) //创建实例，设置位置尺寸
        textField.borderStyle = .roundedRect //设置输入边框风格
        /*
         none--无边框
         line--直角矩形
         bezel--有阴影的边框
         */
        textField.textColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1) //设置文字颜色
        textField.textAlignment = NSTextAlignment.center //设置文字对齐方式
        textField.placeholder = "ZXY&HCY超级handsome" //设置提示文字
        textField.clearButtonMode = UITextField.ViewMode.whileEditing //一键清除按钮
        textField.keyboardType = UIKeyboardType.namePhonePad // 键盘样式
        textField.keyboardAppearance = UIKeyboardAppearance.alert// 安全文本输入（输入密码）
        textField.returnKeyType = UIReturnKeyType.default // 完成按钮样式
        //    textField.background = UIImage(named: "1") //添加背景
        self.view.addSubview(textField) //将控件添加到视图上
        textField.delegate = self //设置控件的代理为当前视图控制器实例
        textField.leftViewMode = .always//设置左按钮的显示模式
        let leftButton = UIButton()//设置按钮的内容样式
        leftButton.setImage(UIImage(named: "image"), for: .normal)
        leftButton.frame = CGRect(x: 0, y: 0, width: 50, height: 50)//设置按钮的大小坐标
        textField.leftView = leftButton
        leftButton.addTarget(self, action: #selector(leftButtonAction), for: .touchUpInside)//设置按钮的点击事件
        print(textField.text)
    }
    
    //这个方法在输入框中文发生变化时被调用，代理方法之一
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if ((textField.text?.count)! >= 11) {
            textField.placeholder = "nonono"
            return false
        } //如果输入框中的文字已经等于11位，则不允许在输入
        if ((string.first)! >= "0") && (string.first)! <= "9"{
            return true
        }else {
            textField.placeholder = "nonono"
            return false
        } //只有0～9之间的数字可以输入
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() //收键盘
        array.append(textField.text!)
        print(array[array.count-1])
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    } //点击空白处键盘返回
    
    //点击按钮触发事件
    @objc func leftButtonAction(){
        print("leftButtonAction")
    }
}

