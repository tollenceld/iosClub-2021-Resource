//
//  ViewController.swift
//  UIPickerView
//
//  Created by 半斤 on 2020/8/22.
//  Copyright © 2020 半斤. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let pickerView = UIPickerView(frame: CGRect(x: 40, y: 100, width: 280, height: 200))
        //创建选择器控制实例
        pickerView.delegate = self
        //设置代理
        pickerView.dataSource = self
        //将选择器添加到当前视图上
        var eum = pickerView.numberOfComponents
        print(eum)//调用封装好的属性
        
        self.view.addSubview(pickerView)
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2    }//定义多少组
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10//定义多少行
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "第\(component+1)组第\(row)行"
    }
    //    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
    //        let attri = NSAttributedString(string: "第\(component+1)组第\(row)行")
    //        return attri
    //
    //    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let view = UIImageView(image: UIImage(named:"image"))
        
        view.frame = CGRect(x: 0, y: 0, width: 110, height: 40)//插入图片的长宽
        
        return  view
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("用户选择了\(component)组\(row)行")
    }
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        if component==0 {
            return 130//第一列
        }else{
            return 90//第二列
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 50//每行高度
    }
    //封装好的属性
    //    public var numberOfComponents:Int { get }//获取UIPickerView的控件有多少组
    //    public func numberOfRows(inComponent:Int) -> Int//获取UIPickerView的控件有多少行
    //    public func rowSize(forComponent component:Int) -> CGSize//获取UIPickerView某个组的行尺寸
    //    public func view(forRow row:Int,forCOmponent:Int) -> UIView?//获取某个分组某行的自定义视图，可能为nil
    //    public func reloadAllcomponents()//重新加载UIPickerView控件的全部分组数据
    //    public func reloadComponent(_component:Int)//重新加载UIPickerView控件的某个分组
    //    public override func selectRow{_row:Int,inComponent component:Int,animated:Bool)}//使用代码选中某个分组中的某一行，可以决定是否带有动画效果
    //    publicn func selectedRow(inComponent component:Int) -> Int//获取某个分组用户选中的行
    //
    
    
    
    
}

