//
//  BirdDetailHeaderImageView.swift
//  Birds
//
//  Created by Asaad Jaber on 26/03/2024.
//

import Foundation
import UIKit

class BirdDetailHeaderImageView: UITableViewHeaderFooterView {
    static let reuseID: String = "birdDetailHeaderImageViewReuseID"
    
    var headerImageView: UIImageView!
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: BirdDetailHeaderImageView.reuseID)
        setUp()
    }
    
    func setUp() {
        headerImageView = UIImageView()
        headerImageView.translatesAutoresizingMaskIntoConstraints = false
        headerImageView.image = UIImage(systemName: "camera.macro")
        headerImageView.contentMode = .scaleToFill
        headerImageView.backgroundColor = .yellow
        headerImageView.clipsToBounds = true
        
        addSubview(headerImageView)
        
        let constraints = [
            //headerImageView.topAnchor.constraint(equalTo: topAnchor),
            headerImageView.heightAnchor.constraint(equalTo: heightAnchor),
            headerImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            headerImageView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
}
