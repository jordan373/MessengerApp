//
//  ViewController.swift
//  Messenger
//
//  Created by Jordan Denning on 5/26/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func RegisterButton(_ sender: Any) {
        performSegue(withIdentifier: "RegisterViewSegue", sender: self)
    }
    
    @IBAction func LoginButton(_ sender: Any) {
        performSegue(withIdentifier: "LoginViewSegue", sender: self)
    }
    
    
}

