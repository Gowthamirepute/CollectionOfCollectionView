//
//  ViewController.swift
//  Xcode_Tut
//
//  Created by Hxtreme on 17/03/20.
//  Copyright © 2020 Hxtreme. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    var appValue:[AppCategory]?
    
     var cellId="Cell"
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return appValue?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! FeaturedCollectionViewCell
        
        let currentvalue=appValue?[indexPath.row]
        cell.currentapp=currentvalue
        cell.nameLabel.text=currentvalue?.name
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width:collectionView.frame.size.width, height: 300)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        appValue=AppCategory.modelGenerator()
        print(appValue?.count)
        
    }


}

