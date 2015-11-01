//
//  Cell1TableViewCell.swift
//  TableViewExploration
//
//  Created by Heather Connery on 2015-11-01.
//  Copyright © 2015 HConnery. All rights reserved.
//

import UIKit

class Cell1TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var cellTitle: UILabel!
    
    @IBOutlet weak var cellSubtitle: UILabel!
    
    
    //called when cells are created but NOT when cells are reused
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
