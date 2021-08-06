
//  WaterFallLayout.swift
//  UICollectionView
//
//  Created by 半斤 on 2020/9/8.
//  Copyright © 2020 半斤. All rights reserved.
//

import UIKit

class WaterFallLayout: UICollectionViewFlowLayout {
    let itemCount:Int
       var attributeArray:Array<UICollectionViewLayoutAttributes>?
    required init?(coder aDecoder: NSCoder) {
           itemCount=0
           super.init(coder:aDecoder)
       }
       //自定义一个构造方法
       init(itemCount:Int){
           self.itemCount = itemCount
           super.init()
       }
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        return attributeArray
    }
    
    override func prepare() {
        super.prepare()
        self.scrollDirection = .vertical
        attributeArray = Array<UICollectionViewLayoutAttributes>()
        let WIDTH = (UIScreen.main.bounds.size.width-self.minimumInteritemSpacing)/2
        
        var queueHight:(one:Int,two:Int) = (0,0)
        
        for index in 0..<self.itemCount{
            let indexPath = IndexPath(item: index, section: 0)
            let attris = UICollectionViewLayoutAttributes(forCellWith: indexPath)
            
            let height:Int = Int(arc4random()%150+60)
            var queue = 0
            if queueHight.one <= queueHight.two{
                queueHight.one += (height+Int(self.minimumInteritemSpacing))
                queue=0
            }else {
                queueHight.two += (height+Int(self.minimumInteritemSpacing))
                queue=1
            }
            let tmpH = queue == 0 ? queueHight.one-height : queueHight.two-height
            attris.frame = CGRect(x: (self.minimumInteritemSpacing+WIDTH)*CGFloat(queue), y: CGFloat(tmpH), width: WIDTH, height: CGFloat(height))
            attributeArray?.append(attris)
        }
        if queueHight.one<=queueHight.two{
            self.itemSize = CGSize(width: WIDTH, height: CGFloat(queueHight.two*2/self.itemCount)-self.minimumInteritemSpacing)
        }else{
            self.itemSize = CGSize(width: WIDTH, height: CGFloat(queueHight.one*2/self.itemCount)-self.minimumInteritemSpacing)
        }
        
    }

}
