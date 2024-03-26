//
//  BirdDetailViewController.swift
//  Birds
//
//  Created by Asaad Jaber on 17/03/2024.
//

import Foundation
import UIKit

class BirdDetailViewController: UITableViewController {
    
    var bird: Bird!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(BirdDetailCellView.self, forCellReuseIdentifier: BirdDetailCellView.cellReuseID)
        tableView.register(BirdDetailHeaderImageView.self, forHeaderFooterViewReuseIdentifier: BirdDetailHeaderImageView.reuseID)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let view = tableView.dequeueReusableCell(withIdentifier: BirdDetailCellView.cellReuseID) as? BirdDetailCellView else {
            fatalError("no cell view of type BirdDetailCellView was found.")
        }
        return view
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = tableView.dequeueReusableHeaderFooterView(withIdentifier: BirdDetailHeaderImageView.reuseID) as! BirdDetailHeaderImageView
        
        return view
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 250
    }
}
