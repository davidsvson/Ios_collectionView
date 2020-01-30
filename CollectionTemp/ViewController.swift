//
//  ViewController.swift
//  CollectionTemp
//
//  Created by David Svensson on 2020-01-30.
//  Copyright © 2020 David Svensson. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDataSource {
    
    let cellId = "CellId"
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let nib = UINib(nibName: "CollectionViewCell", bundle: nil)
        
        collectionView.register(nib, forCellWithReuseIdentifier: cellId)
        
        collectionView.dataSource = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CollectionViewCell
        
        cell.label.text = "David"
        
        return cell
    }
    
    
}

