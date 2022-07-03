//
//  ViewController.swift
//  hW2
//
//  Created by Лена Гусарова on 02.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var statusLable: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        print(#function)
        
        statusLable.isHidden = true
        
        usernameTextField.placeholder = "Введите свой ник"
        
    }
    
    
    @IBAction func buttonDidTap(_ sender: Any) {
        // введеные данные с "Lena"
        guard let username = usernameTextField.text else {return}
        
        if username == "Lena" {
            statusLable.textColor = .green
            statusLable.text = "все кул!"
            
            guard let unlockVC = storyboard?.instantiateViewController(withIdentifier: "UnlockViewController") else {return}
        
            present(unlockVC, animated: true)
        }
        else {
            statusLable.textColor = .red
            statusLable.text = "все не кул!"
            
            
            
            guard let forgotVC = storyboard?.instantiateViewController(withIdentifier: "ViewController2") else {return}
            navigationController?.pushViewController(forgotVC, animated: true)
            
        }
        statusLable.isHidden = false
    }
    
    
    
    
}

