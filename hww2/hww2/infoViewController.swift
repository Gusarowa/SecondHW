//
//  infoViewController.swift
//  hww2
//
//  Created by Лена Гусарова on 03.07.2022.
//

import UIKit

class infoViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
    }
    
    @IBAction func infoButton(_ sender: Any) {
        dismiss(animated: true)
    }
}
