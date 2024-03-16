//
//  ViewController.swift
//  Birds
//
//  Created by Asaad Jaber on 16/03/2024.
//

import UIKit

class ViewController: UIViewController {
    var collectionView: UICollectionView!
    var flowLayout: UICollectionViewFlowLayout!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        flowLayout = UICollectionViewFlowLayout()
        collectionView = UICollectionView(frame: UIScreen.main.bounds, collectionViewLayout: flowLayout)
        collectionView.backgroundColor = .yellow
        collectionView.register(BirdStackCellView.self, forCellWithReuseIdentifier: BirdStackCellView.cellReuseID)
        view.addSubview(collectionView)
    }
    
    func setupCollectionView() {
        flowLayout.itemSize = CGSize(width: 100, height: 100)
    }
}

