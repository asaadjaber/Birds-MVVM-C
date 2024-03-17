//
//  BirdsListViewController.swift
//  Birds
//
//  Created by Asaad Jaber on 16/03/2024.
//

import UIKit

class BirdsListViewController: UICollectionViewController {
    
    var birds: [Bird] = [Bird(name: "Sparrow", family: "some"),
                         Bird(name: "Crow", family: "some")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .yellow
        collectionView.register(BirdStackCellView.self, forCellWithReuseIdentifier: BirdStackCellView.cellReuseID)
        collectionView.dataSource = self
        collectionView.delegate = self
        view.addSubview(collectionView)
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        birds.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BirdStackCellView.cellReuseID, for: indexPath) as? BirdStackCellView else {
            fatalError("no cell view of type BirdStackCellView was found.")
        }
        cell.bird = birds[indexPath.row]
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("selected bird \(birds[indexPath.row])")
    }
}

