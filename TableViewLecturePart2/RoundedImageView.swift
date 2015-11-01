//
//  RoundedImageView.swift
//  TableViewExploration
//
//  Created by Heather Connery on 2015-11-01.
//  Copyright © 2015 HConnery. All rights reserved.
//

import UIKit

// this is a view subclass
class RoundedImageView: UIImageView {
    //Timing function
    override func awakeFromNib() {
        //make sure parent awakes from nib first
        super.awakeFromNib()
        
        //meta data representation of a view is called layer property -> core graphics (base under UI)
        layer.cornerRadius = (bounds.size.width + bounds.size.height) / 4
    }

}
