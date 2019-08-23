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
    }
    
    @IBAction func signUpBtnPressed(_ sender: UIButton) {
        let signUpVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignUpVC") as! SignUpVC
        self.navigationController?.pushViewController(signUpVC, animated: true)
    }
}

