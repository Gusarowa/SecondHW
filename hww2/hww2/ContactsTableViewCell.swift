//
//  ContactsTableViewCell.swift
//  hww2
//
//  Created by Лена Гусарова on 03.07.2022.
//

import UIKit

class ContactsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
