//
//  ViewController.swift
//  UISeartchBar
//
//  Created by 半斤 on 2020/8/24.
//  Copyright © 2020 半斤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let searchBar = UISearchBar(frame: CGRect(x: 20, y: 100, width: 280, height: 80))
        
        searchBar.searchBarStyle = .minimal//
        
        searchBar.barTintColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        
        searchBar.tintColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        
        searchBar.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
//        searchBar.backgroundImage = UIImage(named: "image")
        
       searchBar.placeholder = "请输入"
        //设置默认用户提示文字
        searchBar.prompt = "搜索"
        //设置搜索栏标题
        searchBar.showsCancelButton = true
        
        searchBar.showsScopeBar = true
        
        searchBar.scopeButtonTitles = ["一一","二二","三三","四四","五五"]
        
        searchBar.selectedScopeButtonIndex = 0
        
        searchBar.frame = CGRect(x: 20, y: 100, width: 280, height: 150)
        self.view.addSubview(searchBar)
        
    }

    
  
    
    
}

