//
//  itemListTableViewController.swift
//  Universal preference
//
//  Created by Programming on 06.04.2019.
//  Copyright © 2019 gaudi. All rights reserved.
//

import UIKit

class itemListTableViewController: UITableViewController {
    //MARK: -  Custom Properties
    var items: Items!
    var rootIndex: Int!
}

// MARK: - Metods
extension itemListTableViewController {
    func updateUI() {
    let item = Items.all[rootIndex]
        let title: String
        
        switch item.data {
        case .image:
            title = "Image"
        case .list (let name, _):
            title = name
        case .text (let text):
            title = text
        }
        
        navigationItem.title = title
    }
}

//MARK: - Table View Data Source
extension itemListTableViewController {
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let item = items[row]
        let itemType = item.data
        let cell: UITableViewCell
        
        switch itemType {
            
        case let .image(image):
            let imageCell = tableView.dequeueReusableCell(withIdentifier: "ImageCell") as! ImageCell
            imageCell.customImageView.image = image
            cell = imageCell
            
        case .list(names: let name, indexes: _):
            let listCell = tableView.dequeueReusableCell(withIdentifier: "ListCell") as! ListCell
            listCell.nameLabel.text = name
            cell = listCell
            
        case .text(let text):
            let textCell = tableView.dequeueReusableCell(withIdentifier: "TextCell") as! TextCell
            textCell.customTextLabel.text = text
            cell = textCell
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        let itemType = items [indexPath.row].data
        switch itemType {
        case .image:
            return 200
        case .text:
            return UITableView.automaticDimension
        case .list:
            return 44
        }
    }
    
    override func tableView(_ tableView: UITableView,
    numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
}

// MARK: - UI View Controller
extension itemListTableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        if items == nil {
            items = Items.all
            rootIndex = 0
        }
        updateUI()
    }
}
