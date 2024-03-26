//
//  BirdDetailViewCoordinator.swift
//  Birds
//
//  Created by Asaad Jaber on 26/03/2024.
//

import Foundation
import UIKit

class BirdDetailViewCoordinator {
    
    func presentDetailView(from viewController: UIViewController) {
        let toViewController = BirdDetailViewController()
        viewController.navigationController?.pushViewController(toViewController, animated: true)
    }
}
