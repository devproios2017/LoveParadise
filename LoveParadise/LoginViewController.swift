//
//  LoginViewController.swift
//  LoveParadise
//
//  Created by Jonquille on 08/06/2017.
//  Copyright © 2017 DHT. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: BaseViewController {

    @IBOutlet weak var userNameTv: UITextField!
    @IBOutlet weak var passWordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //hide navigationbar
        navigationController?.navigationBar.isHidden = true
        //loginfirebase
        Auth.auth().addStateDidChangeListener({auth, user in
            if user != nil {
                // perform segue to mainApp
            }
        })
        //hide keyboard
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

    func validate() -> Bool {
        if TextField.isNil(userNameTv,passWordTF) {
            self.showAlert(msg: "Bạn phải điền đẩy đủ thông tin")
            return false
        }
        return true
    }
    
    @IBAction func siginBtn(_ sender: Any) {
        if validate() {
            login()
            }
        return
        
    }
    func login(){
        Auth.auth().signIn(withEmail: userNameTv.text!, password: passWordTF.text!, completion: { user, error in
            if error == nil {
                print("login success:\(user?.uid ?? "@.@")")
            }else{
                print("login failed:\(error?.localizedDescription)")
            }
            
            
            
        })
    }
    

}
