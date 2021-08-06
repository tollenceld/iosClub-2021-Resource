//
//  ViewController.swift
//  UITableView
//
//  Created by 半斤 on 2020/9/2.
//  Copyright © 2020 半斤. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    //设置列表有多少行
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray!.count
    }
    //设置每行数据的数据载体Cell的视图
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //        //根据注册的Cell的类ID值获得到载体Cell
        //        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellId", for: indexPath)
        //        //进行标题的设置
        //        cell.textLabel?.text = dataArray?[indexPath.row]
        //        return cell
        let cell:ProductTableViewCell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellId",for: indexPath) as! ProductTableViewCell
        let model = dataArray![indexPath.row]
        cell.iconView.image  = UIImage(named: model.imageName!)
        cell.proTitle.text = model.name
        cell.proDetail.text = model.subTitle
        cell.price.text = model.price
        return cell
    }
    //添加或删除视图的时候要把分组的部分注释掉
    //设置列表的分区数
    //    func numberOfSections(in tableView: UITableView) -> Int {
    //        return 2
    //    }
    //    //设置分区标题
    //    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    //        return "我是分区头部"
    //    }
    //    //设置分区尾部标题
    //    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
    //        return "我是分区尾部"
    //    }
    //设置分区的头部视图
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 120))//这里的height是指视图内的内容高度
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return view
    }
    //设置分区的尾部视图
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView?{
        let view =  UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 50))//这里的height是指视图内的内容高度
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return view
    }
    //设置分区整个头部视图的高度
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    //设置分区整个尾部视图的高度
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 50
    }
    //MARK:协议中的其他重要方法
    //当Cell将要展示出来的时候被调用
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
    }
    //当头部视图将要展示出来的时候被调用
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
    }
    //当尾视图将要显示出来的时候被调用
    func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
        
    }
    //当Cell已经被展示出来的时候被调用
    func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
    }
    //当头视图已经被展示出来时被调用
    func tableView(_ tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int) {
        
    }
    //当尾部视图别展示出来的时候被调用
    func tableView(_ tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int) {
        
    }
    //设置Cell高度
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    //    //用户将要选中某一行时被调用
    //    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
    //
    //    }
    //    //用户将要取消选中某一行时被调用
    //    func tableView(_ tableView: UITableView, willDeselectRowAt indexPath: IndexPath) -> IndexPath? {
    //
    //    }
    //用户已经选中某一行时被调用
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    //用户已经取消选择某一行时被调用
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
    }
    //MARK:编辑模式“增删改”
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        if indexPath.row==0{
            return .insert
        }else{
            return .delete
        }
    }
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        if indexPath.row==0{
            return"插入"
        }else{
            return"删除"
        }
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            print("点击了删除按钮")
            dataArray?.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.left)
        }else{
            
            let prol = Product()
            prol.imageName = "productImage"
            prol.name = "杜康酒1500ml罐装"
            prol.subTitle = "何以解忧唯有杜康"
            prol.price = "50元"
            dataArray?.insert(prol, at: indexPath.row)
            tableView.insertRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
        
    }
    //改变分组中的顺序
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let tmp = dataArray![sourceIndexPath.row]
        let tmp2 = dataArray![destinationIndexPath.row]
        dataArray![sourceIndexPath.row]  = tmp2
        dataArray![destinationIndexPath.row] = tmp
    }
//    @objc func click(sender: AnyObject) {
//        //                    let tableView.isEditing  = true
//        //        tableView.setEditing(!tableView.editing, animated: true)
//        print("gan")
//    }
    
    
    //MARK:创建列表
    //在viewController中添加一个数组，作为列表中填充数据的数据源
    class Product:NSObject{
        var name:String?
        var price:String?
        var imageName:String?
        var subTitle:String?
    }
    
    //    var dataArray:Array<String>?
    var dataArray:Array<Product>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let but = UIButton()
//        but.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
//        but.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
//        but.addTarget(self, action: #selector(click), for: .touchUpInside)
        
        // Do any additional setup after loading the view.
        //对数据源进行初始化
        //        dataArray  = ["第一行","第二行","第三行","第四行","第五行"]
        //        //创建UITableView实例
        //        //传入的第一个参数为控件的位置和尺寸。第二个参数为UITableView控件的风格，枚举值为case plain；case grouped
        //        let tableView = UITableView(frame: self.view.frame,style: .plain)
        //        //注册Cell
        //        tableView.register(NSClassFromString("UITableViewCell"), forCellReuseIdentifier: "TableViewCellId")
        //        self.view.addSubview(tableView)
        //        //设置数据源代理
        //        tableView.delegate  = self
        //        tableView.dataSource =  self
        let pro1 = Product()
        pro1.imageName = "productImage"
        pro1.name = "快乐水500ml罐装"
        pro1.subTitle = "透心凉，心飞扬"
        pro1.price = "3元"
        let pro2 = Product()
        pro2.imageName = "productImage"
        pro2.name = "快乐水500ml罐装"
        pro2.subTitle = "透心凉，心飞扬"
        pro2.price = "3元"
        //对数据源进行初始化
        dataArray =  [pro1,pro2]
        //创建UITableView实例
        let tableView =  UITableView(frame: self.view.frame,style: .grouped)
        //注册Cell
        tableView.register(UINib.init(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCellId")
        self.view.addSubview(tableView)
        //设置数据源代理
        tableView.delegate = self
        tableView.dataSource = self
        //打开编辑模式
        //tableView.isEditing = true
        tableView.setEditing(!tableView.isEditing, animated: true)
        
//        self.view.addSubview(but)
    }
    
    
    
}

