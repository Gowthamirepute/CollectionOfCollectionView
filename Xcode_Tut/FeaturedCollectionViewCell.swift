//
//  FeaturedCollectionViewCell.swift
//  Xcode_Tut
//
//  Created by Hxtreme on 17/03/20.
//  Copyright © 2020 Hxtreme. All rights reserved.
//

import UIKit

class FeaturedCollectionViewCell: UICollectionViewCell,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var collectionViews: UICollectionView!
    
    var currentapp:AppCategory?{
        didSet{
            
            if let name=currentapp?.name{
                nameLabel.text=name
                
            }
        }
    }
    
    override func awakeFromNib() {
        
        
        collectionViews.dataSource=self
        collectionViews.delegate=self
    }

    
    func setupView(){
        
        print("Default calling")
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
          
        
        return currentapp?.app?.count ?? 0
      }
      
      func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
          let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "Cells", for: indexPath) as! CategoryCollectionViewCell
        
        cell.currentAppData=currentapp?.app?[indexPath.row]
          return cell
      }
      func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
             return CGSize(width: 160, height: 250)
         }
      func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
          return UIEdgeInsets(top: 0, left: 40, bottom: 0, right: 40)
      }
      
    
}


class CategoryCollectionViewCell: UICollectionViewCell {
    
    
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    
    @IBOutlet weak var thirdLabel: UILabel!
    var currentAppData:App?{
        
        didSet{
            
            if let name=currentAppData?.name,let others=currentAppData?.description,let prices=currentAppData?.price{
                print("Pass tha\(name) \(others) \(prices)")
                titleLabel.text=name
                secondLabel.text=others
                thirdLabel.text=String(prices)
            }
        }
    }
    
    override func awakeFromNib() {
                 setupViews()

    }
    
    override init(frame: CGRect) {
        
         super.init(frame: frame)
     }
     
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
     }
     
     
     func setupViews(){
         ImageView.contentMode = .scaleAspectFill
        ImageView.layer.cornerRadius=10
        ImageView.layer.masksToBounds=true
        secondLabel.text="Entertainment"
        thirdLabel.text="$3.99"
     }
}

