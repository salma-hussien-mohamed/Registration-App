//
//  ViewController.swift
//  RegistrationApp
//
//  Created by ahmedbahnasy on 7/2/19.
//  Copyright © 2019 ThirdDoploma. All rights reserved.
//

import UIKit

class SignInVC: UIViewController {

    @IBOutlet weak var email_tf: UITextField!
    @IBOutlet weak var password_tf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Sign In"
    }

    @IBAction func signInBtnPressed(_ sender: UIButton) {
        
        guard let email = email_tf.text?.trimmingCharacters(in: .whitespacesAndNewlines), !email.isEmpty, let password = password_tf.text?.trimmingCharacters(in: .whitespacesAndNewlines), !password.isEmpty else {
            self.showAlert(title: "Sorry", message: "Enter Email and Password")
            return
        }
        
        let def = UserDefaults.standard
        guard let cachedEmail = def.object(forKey: UserDefaultsKeys.email) as? String, email == cachedEmail, let cachedPassword = def.object(forKey: UserDefaultsKeys.password) as? String, password == cachedPassword else {
            self.showAlert(title: "Sorry", message: "Enter Valid Email and Password")
            return
        }
        
        let profileVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProfileVC") as! ProfileVC
        self.navigationController?.pushViewController(profileVC, animated: true)
    }
    
    @IBAction func signUpBtnPressed(_ sender: UIButton) {
        let signUpVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignUpVC") as! SignUpVC
        self.navigationController?.pushViewController(signUpVC, animated: true)
    }
}

