//
//  RegisterViewController.swift
//  Messenger
//
//  Created by Jordan Denning on 5/26/21.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func RegisterButtonPressed(_ sender: Any) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e);
                }
                else {
                    self.performSegue(withIdentifier: "RegisterToChatSegue", sender: self)
                }
            }
        }
    }
}
