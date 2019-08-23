//
//  ProfileVC.swift
//  RegistrationApp
//
//  Created by ahmedbahnasy on 7/2/19.
//  Copyright © 2019 ThirdDoploma. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let def = UserDefaults.standard
        let cachedEmail = def.object(forKey: UserDefaultsKeys.email) as? String
        let cachedPassword = def.object(forKey: UserDefaultsKeys.password) as? String
        let cachedAddress = def.object(forKey: UserDefaultsKeys.address) as? String
        let cachedName = def.object(forKey: UserDefaultsKeys.name) as? String
        self.showAlert(title: "Sorry", message:cachedEmail! + cachedPassword! + cachedPassword! + cachedName!)
        // Do any additional setup after loading the view.
    }
    
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
