//
//  LoginViewController.swift
//  LoveParadise
//
//  Created by Jonquille on 08/06/2017.
//  Copyright © 2017 DHT. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var userNameTv: UITextField!
    @IBOutlet weak var passWordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        
        Auth.auth().addStateDidChangeListener({auth, user in
            if user != nil {
                // perform segue to mainApp
            }
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func siginBtn(_ sender: Any) {
        guard userNameTv.text != nil, passWordTF.text != nil else {
            return
        }
        
        Auth.auth().signIn(withEmail: userNameTv.text!, password: passWordTF.text!, completion: { user, error in
            if error == nil {
                print("login success:\(user?.uid ?? "@.@")")
            }else{
                print("login failed:\(error?.localizedDescription)")
            }
        })
    }
    

}
