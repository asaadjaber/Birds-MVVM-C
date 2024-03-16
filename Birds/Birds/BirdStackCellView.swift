//
//  BirdStackCellView.swift
//  Birds
//
//  Created by Asaad Jaber on 16/03/2024.
//

import Foundation
import UIKit

class BirdStackCellView: UICollectionViewCell {
    static let cellReuseID = "birdStackCellID"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp() {
        //TODO: Add thumbnail and button label
        self.backgroundColor = .magenta
    }
}
