//
//  DetailVC.swift
//  populateTableData
//
//  Created by Hamza Mustafa on 10/12/2020.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailTitle: UILabel!
    
    var myTitle : String?
    var myImage : UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailTitle.text = myTitle
        detailImage.image = myImage
    }
    
    override func viewWillAppear(_ animated: Bool) {
        detailImage.layer.cornerRadius = 25.0
        detailImage.clipsToBounds = true
    }
}
