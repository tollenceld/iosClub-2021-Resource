//
//  ViewController.swift
//  UIData
//
//  Created by 半斤 on 2020/8/24.
//  Copyright © 2020 半斤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var dataPicker = UIDatePicker()

    override func viewDidLoad() {
        
        dataPicker.frame  = CGRect(x: 20, y: 100, width: 280, height: 200)
        dataPicker.datePickerMode = .dateAndTime
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.addSubview(dataPicker)
        dataPicker.addTarget(self, action: #selector(sele), for: .valueChanged)
    }
    //datePickerMode时间选择器的模式选择
    public enum UIDatePickerMode : Int {
        case time
        case date
        case dateAndTime
        case countDownTimer
    }
    @objc func sele(datePicker:UIDatePicker) {
        let date = datePicker.date
        let time = datePicker.countDownDuration
        print(date,time)
    }
    //MARK:UIDataPicker & UIPickerView 在UI展现上很相似，但实现方式完全不同


}

