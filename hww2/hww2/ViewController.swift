//
//  ViewController.swift
//  hww2
//
//  Created by Лена Гусарова on 03.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonDidTap(_ sender: Any) {
        guard let number = numberTextField.text else { return }
        
        if number.starts(with: "89087"){
            print(" cool!")
            
            guard let contVC = storyboard?.instantiateViewController(withIdentifier: "ContactsTableViewController") else {return}
        navigationController?.pushViewController(contVC, animated: true)
        
        
    } else {
        
        guard let errorVC = storyboard?.instantiateViewController(withIdentifier: "ErrorScreenViewController") else {return}
        
        present(errorVC, animated: true)
    }
    
}



}

