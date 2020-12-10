//
//  HomeTableCell.swift
//  populateTableData
//
//  Created by Hamza Mustafa on 08/12/2020.
//

import UIKit

class HomeTableCell: UITableViewCell {
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userTitle: UILabel!
    
    var model : HomeItems! {
        didSet {
            self.userTitle.text = model.userTitle
            self.userImage.image = model.userImage
        }
    }
}
