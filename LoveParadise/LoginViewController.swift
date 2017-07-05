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
    
    @IBOutlet weak var loginBTN: UIButton!
    @IBOutlet weak var forgotPasswordBTN: UIButton!
    @IBOutlet weak var createAccBTN: UIButton!
    @IBOutlet weak var facebookBTN: UIButton!
    @IBOutlet weak var googleBTN: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // hide navigation bar
        navigationController?.navigationBar.isHidden = true
        //login firebase
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
    func validate() -> Bool {
        if TextField.isNil(userNameTv,passWordTF){
            self.showAlert(msg: "Bạn cần điền tài khoản và mật khẩu")
            return false
        }
        return true
    }

    @IBAction func actionButton(_ sender: UIButton){
        switch sender {
        case loginBTN:
            login()
        case createAccBTN:
            print("create account")
            let registerVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
            self.present(registerVC, animated: true, completion: nil)
        default:
            break
        }
        
    }
    func login(){
        // ustest1@gmail.com - 123456
        if validate() {
            Auth.auth().signIn(withEmail: userNameTv.text!, password: passWordTF.text!,     completion: { user, error in
                if error == nil {
                    print("login success:\(user?.uid ?? "@.@")")
                    self.showAlert(msg: "login with: \(user?.email)")
                }else{
                    self.showAlert(msg: "Tài khoản hoặc mật khẩu sai")
                    print("login failed:\(String(describing: error?.localizedDescription))")
                }
            })
        }
    }
    

}
