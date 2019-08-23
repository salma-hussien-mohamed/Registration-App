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
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Sign Up"
    }
    
    private func saveCredentials(email: String, password: String, name: String, address: String , image: UIImage) {
        let def = UserDefaults.standard
        
        //Userdefaultss.shared.set(object:email, key:UserDefaultsKeys.email)
        def.set(email, forKey: UserDefaultsKeys.email)
        def.set(password, forKey: UserDefaultsKeys.password)
        def.set(name, forKey: UserDefaultsKeys.name)
        def.set(address, forKey: UserDefaultsKeys.address)

        //def.set(yourDataImageJPG, forKey: UserDefaultsKeys.image)
        def.synchronize()
    }

    @IBAction func SignUpBtnPressed(_ sender: UIButton) {
        let _email = email_tf.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let _password = password_tf.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let _name = name_tf.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let _address = address_tf.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let _image = user_iv.image
        let placeHolderImage = UIImage(named: "3")
        guard let image = _image, image != placeHolderImage, let email = _email, !email.isEmpty, let password = _password, !password.isEmpty, let name = _name, !name.isEmpty, let address = _address, !address.isEmpty else {
            self.showAlert(title: "Sorry", message: "All Fields Are Required")
            return
            
        }
        let emaill=email_tf.text?.isBlank()
        if(!Validation.isValidEmail(email:name) || !Validation.isValidPassword(testStr:password)){
            self.showAlert(title: "Sorry", message: "Please Enter Valid Email And Password")
            return
        }
        
        self.saveCredentials(email: email, password: password, name: name, address: address, image: image)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func imagePickerBtnPressed(_ sender: UIButton) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        present(imagePicker, animated: true, completion: nil)
    }
}

extension SignUpVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {return}
        user_iv.image = selectedImage
        picker.dismiss(animated: true, completion: nil)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}
