//
//  Coordinator.swift
//  Birds
//
//  Created by Asaad Jaber on 16/03/2024.
//

import Foundation
import UIKit

class AppCoordinator {
    
    let window: UIWindow?
    
    var rootViewController: UINavigationController?
    var collectionViewLayout: UICollectionViewFlowLayout?
    
    init(window: UIWindow?) {
        self.window = window
    }
    
    func start() {
        guard let window = window else { return }
        
        collectionViewLayout = UICollectionViewFlowLayout()
        collectionViewLayout?.itemSize = CGSize(width: 70, height: 100)
        
        rootViewController = UINavigationController(rootViewController: BirdsListViewController(collectionViewLayout: collectionViewLayout!))

        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }
}
