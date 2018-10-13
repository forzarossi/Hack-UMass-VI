//
//  ActivitiesLayout.swift
//  FlexCore
//
//  Created by Anthony Lee on 10/12/18.
//  Copyright © 2018 anthony. All rights reserved.
//

import UIKit

class ActivitiesLayout: UICollectionViewFlowLayout{
    
    override func prepare() {
        super.prepare()
        setup()
    }
    
    private func setup() {
        scrollDirection = .vertical
        minimumLineSpacing = 20
        minimumInteritemSpacing = 20
        itemSize = CGSize(width: collectionView!.bounds.width/2.5, height: collectionView!.bounds.height/4.5)
        sectionInset = UIEdgeInsets(top: collectionView!.bounds.height/25, left: collectionView!.bounds.width/15, bottom: collectionView!.bounds.height/25, right: collectionView!.bounds.width/15)
        collectionView!.decelerationRate = UIScrollViewDecelerationRateFast
    }
}
