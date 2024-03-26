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
    
    var bird: Bird! { 
        didSet {
            birdLabelButton.setTitle(bird.name, for: .normal)
        }
    }
    
    var thumbnailImageView: UIImageView!
    var birdLabelButton: UIButton!
    
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
        
        thumbnailImageView = UIImageView()
        thumbnailImageView.translatesAutoresizingMaskIntoConstraints = false
        thumbnailImageView.clipsToBounds = true
        thumbnailImageView.contentMode = .scaleAspectFill
        thumbnailImageView.layer.cornerRadius = 70 / 2
        
        thumbnailImageView.backgroundColor = .blue
        
        addSubview(thumbnailImageView)

        let imageViewConstraints = [
            thumbnailImageView.topAnchor.constraint(equalTo: topAnchor),
            thumbnailImageView.heightAnchor.constraint(equalTo: widthAnchor),
            thumbnailImageView.widthAnchor.constraint(equalTo: widthAnchor),
            thumbnailImageView.centerXAnchor.constraint(equalTo: centerXAnchor)
        ]
        
        NSLayoutConstraint.activate(imageViewConstraints)
        addButtonLabel()
    }
    
    func addButtonLabel() {
        
        birdLabelButton = UIButton(type: .system)
        birdLabelButton.translatesAutoresizingMaskIntoConstraints = false
        birdLabelButton.titleLabel?.numberOfLines = 0
        birdLabelButton.layer.cornerRadius = 4

        birdLabelButton.backgroundColor = .cyan
        
        addSubview(birdLabelButton)
        
        let birdLabelButtonConstraints = [
            birdLabelButton.topAnchor.constraint(equalTo: thumbnailImageView.bottomAnchor, constant: 12),
            birdLabelButton.widthAnchor.constraint(equalTo: widthAnchor),
            birdLabelButton.leadingAnchor.constraint(equalTo: leadingAnchor)
        ]
        
        NSLayoutConstraint.activate(birdLabelButtonConstraints)
    }
}
