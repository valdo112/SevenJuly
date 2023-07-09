//
//  SignUpViewController.swift
//  SevenJuly
//
//  Created by Valdo Parlinggoman on 07/07/23.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var employeeNameTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerButton.isEnabled = false
        usernameTextField.addTarget(self, action: #selector(checkTextField), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(checkTextField), for: .editingChanged)
        repeatPasswordTextField.addTarget(self, action: #selector(checkTextField), for: .editingChanged)
        employeeNameTextField.addTarget(self, action: #selector(checkTextField), for: .editingChanged)
        
    }
    
    @objc func checkTextField(){
        let username = usernameTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        let repeatPassword = repeatPasswordTextField.text ?? ""
        let employeeName = employeeNameTextField.text ?? ""
        
        if !username.isEmpty && !password.isEmpty && !repeatPassword.isEmpty && !employeeName.isEmpty && repeatPassword == password{
            registerButton.isEnabled = true
            registerButton.backgroundColor = UIColor(red: 1, green: 0.765, blue: 0.227, alpha: 1)
        }
//        if repeatPassword != password {
//            registerButton.isEnabled = false
//        }
        else{
            registerButton.isEnabled = false
        }
        
        
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        if registerButton.isEnabled == true{
            let vc = UIStoryboard(name: "LoginView", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
            vc.navigationItem.hidesBackButton = true
            navigationController?.pushViewController(vc, animated: true)
        } else {
            return
        }
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        let vc = UIStoryboard(name: "LoginView", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
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
