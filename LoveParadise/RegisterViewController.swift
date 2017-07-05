//
//  RegisterViewController.swift
//  LoveParadise
//
//  Created by Jonquille on 08/06/2017.
//  Copyright © 2017 DHT. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var registerBTN: UIButton!
    @IBOutlet weak var exitBTN: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        //hide keyboard
        self.hideKeyboardWhenTappedAround()
        //hide navigation bar
        navigationController?.navigationBar.isHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func actionButton(_ sender: UIButton){
        switch sender {
        case exitBTN:
            let loginVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
            self.present(loginVC, animated: true, completion: nil)

        case registerBTN:
            register()
        default:
            break
        }
    }
    func register(){
        print("click register")
    }
    
    

}
