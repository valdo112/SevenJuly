//
//  ForgotPasswordViewController.swift
//  SevenJuly
//
//  Created by Valdo Parlinggoman on 07/07/23.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
    
    @IBOutlet weak var registerButtonPressed: UIButton!
    @IBOutlet weak var resetPasswordButton: UIButton!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var ktpTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        resetPasswordButton.isEnabled = false
        ktpTextField.addTarget(self, action: #selector(checkNotEmptyTarget), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(checkNotEmptyTarget), for: .editingChanged)
        repeatPasswordTextField.addTarget(self, action: #selector(checkNotEmptyTarget), for: .editingChanged)
    }
    
    @objc func checkNotEmptyTarget(){
        let ktp = ktpTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        let repeatPassword = repeatPasswordTextField.text ?? ""
        if !ktp.isEmpty == true && !password.isEmpty == true && !repeatPassword.isEmpty == true && password == repeatPassword{
            resetPasswordButton.isEnabled = true
            resetPasswordButton.backgroundColor = UIColor(red: 1, green: 0.765, blue: 0.227, alpha: 1)
        }
//        if password != repeatPassword{
//            resetPasswordButton.isEnabled = false
//        }
        else {
            resetPasswordButton.isEnabled = false
        }
        
        
    }
    
    @IBAction func resetPasswordButtonPressed(_ sender: UIButton) {
        if resetPasswordButton.isEnabled == true{
            let vc = UIStoryboard(name: "LoginView", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
            vc.navigationItem.hidesBackButton = true
            navigationController?.pushViewController(vc, animated: true)
        } else {
            return
        }
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        let vc = UIStoryboard(name: "LoginView", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        vc.navigationItem.hidesBackButton = true
        navigationController?.pushViewController(vc, animated: true)
        print("pressed")
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
