//
//  HomeVC.swift
//  populateTableData
//
//  Created by Hamza Mustafa on 08/12/2020.
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var modelData : [HomeItems] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView(frame: .zero)
        populateDate()
    }
    
    func populateDate(){
        modelData = [
            HomeItems(title: "AppShap1", img: #imageLiteral(resourceName: "avatar5")),
            HomeItems(title: "AppShap2", img: #imageLiteral(resourceName: "avatar4")),
            HomeItems(title: "AppShap3", img: #imageLiteral(resourceName: "avatar2")),
            HomeItems(title: "AppShap4", img: #imageLiteral(resourceName: "avatar1")),
            HomeItems(title: "AppShap5", img: #imageLiteral(resourceName: "avatar3")),
        ]
    }
}

extension HomeVC : UITableViewDelegate , UITableViewDataSource {
    
    // On Selected Row
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let secondVC = self.storyboard?.instantiateViewController(identifier: "DetailVCid") as? DetailVC {
            secondVC.myTitle = modelData[indexPath.row].userTitle
            secondVC.myImage = modelData[indexPath.row].userImage
            self.navigationController?.pushViewController(secondVC, animated: true)
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableCellid", for: indexPath) as? HomeTableCell {
            cell.model = modelData[indexPath.row]
            return cell
        }
        return UITableViewCell()
    }
}
