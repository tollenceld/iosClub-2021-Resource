//
//  ViewController.swift
//  TableView2
//
//  Created by 半斤 on 2020/9/2.
//  Copyright © 2020 半斤. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellId",for: indexPath)
        
        cell.textLabel?.text = dataArray?[indexPath.row]
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return titleArray!
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titleArray![section]
    }
    func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
        return index
    }
    
    var dataArray:Array<String>?
    var titleArray: [String]?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        dataArry = ["第一行","第二行","第三行","第四行","第五行"]
        titleArray = ["#","A","B","C","D","E","G","H","F","更多"]
        dataArray = Array<String>()
        for _ in 0...3{
            dataArray?.append("联系人")
        }
       
        let tableView = UITableView(frame: self.view.frame,style: .plain)
        tableView.register(NSClassFromString("UITableViewCell"), forCellReuseIdentifier: "TableViewCellId")
        self.view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }


}

