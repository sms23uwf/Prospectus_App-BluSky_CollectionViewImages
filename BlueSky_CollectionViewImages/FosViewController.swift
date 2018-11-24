//
//  FosViewController.swift
//  BlueSky_CollectionViewImages
//
//  Created by Steve Satterfield on 11/17/18.
//  Copyright © 2018 uwf. All rights reserved.
//

import UIKit

var chosenSubjectOfStudy = ""

class FosViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var fosCollectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ModelData.shared.fos.count
    }
    
    func collectionView(_ fosCollectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let fosCell = fosCollectionView.dequeueReusableCell(withReuseIdentifier: "fosCell", for: indexPath) as! fosCollectionViewCell
        
        
        fosCell.fosLabel.text = ModelData.shared.fos[indexPath.item]
        
        fosCell.layer.borderColor = UIColor.lightGray.cgColor
        fosCell.layer.borderWidth = 0.5
        return fosCell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fosCollectionView.dataSource = self
        fosCollectionView.delegate = self

        let layout = self.fosCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        layout.minimumInteritemSpacing = 5
        layout.itemSize = CGSize(width: (self.fosCollectionView.frame.size.width - 20), height: (self.fosCollectionView.frame.size.height)/10)
        
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        loData.shared.loItemArray = loModelData.shared.fosLO[indexPath.item]
 
        chosenSubjectOfStudy = ModelData.shared.fos[indexPath.item]
        
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.layer.borderColor = UIColor.gray.cgColor
        cell?.layer.borderWidth = 2
        
    }

    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.layer.borderColor = UIColor.lightGray.cgColor
        cell?.layer.borderWidth = 0.5
    }
 
}
