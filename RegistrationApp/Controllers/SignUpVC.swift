//
//  SignUpVC.swift
//  RegistrationApp
//
//  Created by ahmedbahnasy on 7/2/19.
//  Copyright © 2019 ThirdDoploma. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {

    @IBOutlet weak var user_iv: UIImageView!
    @IBOutlet weak var email_tf: UITextField!
    @IBOutlet weak var password_tf: UITextField!
    @IBOutlet weak var name_tf: UITextField!
    @IBOutlet weak var address_tf: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Sign Up"
    }
    
    

    @IBAction func SignUpBtnPressed(_ sender: UIButton) {
        let _email = email_tf.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let _password = password_tf.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let _name = name_tf.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let _address = address_tf.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        guard let email = _email, !email.isEmpty, let password = _password, !password.isEmpty, let name = _name, !name.isEmpty, let address = _address, !address.isEmpty else {
            self.showAlert(title: "Sorry", message: "All Fields Are Required")
            return
            
        }
        
        self.navigationController?.popViewController(animated: true)
    }
}
