//
//  LoginViewController.swift
//  SevenJuly
//
//  Created by Valdo Parlinggoman on 07/07/23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginNowButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginNowButton.isEnabled = false
        usernameTextField.addTarget(self, action: #selector(checkNotEmptyTarget), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(checkNotEmptyTarget), for: .editingChanged)
        
    }
    
    
    
    @objc func checkNotEmptyTarget(sender: UITextField){
        sender.text = sender.text?.trimmingCharacters(in: .whitespaces)
        let username = usernameTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        if !username.isEmpty == true && !password.isEmpty == true{
            loginNowButton.isEnabled = true
            loginNowButton.backgroundColor = UIColor(red: 1, green: 0.765, blue: 0.227, alpha: 1)
        } else {
            loginNowButton.isEnabled = false
        }
        
    }
    
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        let vc = UIStoryboard(name: "ForgotPasswordView", bundle: nil).instantiateViewController(withIdentifier: "ForgotPasswordViewController") as! ForgotPasswordViewController
        vc.navigationItem.hidesBackButton = true
        navigationController?.pushViewController(vc, animated: true)
    }
   
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        guard loginNowButton.isEnabled == true else { return
            
        }
            let vc = UIStoryboard(name: "TabBarView", bundle: nil).instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
            vc.navigationItem.hidesBackButton = true
            navigationController?.pushViewController(vc, animated: true)
         
        }
    
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        let vc = UIStoryboard(name: "SignUpView", bundle: nil).instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        vc.navigationItem.hidesBackButton = true
        navigationController?.pushViewController(vc, animated: true)
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
