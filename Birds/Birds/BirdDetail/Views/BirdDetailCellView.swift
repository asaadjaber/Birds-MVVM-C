//
//  BirdDetailCellView.swift
//  Birds
//
//  Created by Asaad Jaber on 26/03/2024.
//

import Foundation
import UIKit

class BirdDetailCellView: UITableViewCell {
    static let cellReuseID: String = "BirdDetailCellViewReuseID"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: BirdDetailCellView.cellReuseID)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
