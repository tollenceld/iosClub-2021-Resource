//
//  ViewController.swift
//  UICollectionView
//
//  Created by 半斤 on 2020/9/7.
//  Copyright © 2020 半斤. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemId", for: indexPath)
        cell.backgroundColor = UIColor(red: (CGFloat(Float(arc4random()%255)/255.0)), green: (CGFloat(Float(arc4random()%255)/255.0)), blue: (CGFloat(Float(arc4random()%255)/255.0)), alpha: 1.0)
        return cell
    }
    
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 1
//    }//返回分区个数
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }//返回每个分区的item个数
    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemId", for: indexPath)
//        cell.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
//        return cell
//    }//返回每个分区具体的数据载体item
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("第\(indexPath.row)个Item被点击")
    }//用户交互协议
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        if indexPath.row%2 == 0 {
//            return CGSize(width: 50, height: 50)
//        }else{
//            return CGSize(width: 60, height: 60)
//        }
//    }//更加灵活的九宫格布局
    //可以通过相应函数动态配置不同item

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let layout = WaterFallLayout(itemCount: 30)
        //创建集合布局类
        let collectionView = UICollectionView(frame: self.view.frame,collectionViewLayout: layout)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(NSClassFromString("UICollectionViewCell"), forCellWithReuseIdentifier: "itemId")
        self.view.addSubview(collectionView)
//MARK:viewController中的布局
//        layout.scrollDirection = .vertical
//        layout.itemSize = CGSize(width: 100, height: 100)
//        layout.minimumLineSpacing = 30//最小行间距
//        layout.minimumInteritemSpacing = 30//最小列间距
//        layout.headerReferenceSize = CGSize(width: self.view.frame.size.width, height: 100)//设置头部视图尺寸
//        layout.footerReferenceSize = CGSize(width: self.view.frame.size.width, height: 100)//设置尾视图尺寸
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
//        let collectionView = UICollectionView(frame: self.view.frame,collectionViewLayout: layout)
//        collectionView.delegate = self
//        collectionView.dataSource = self
//        collectionView.register(NSClassFromString("UICollectionViewCell"), forCellWithReuseIdentifier: "itemId")
//        self.view.addSubview(collectionView)
//
    }
    


}

