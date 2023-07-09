//
//  ViewController.swift
//  SevenJuly
//
//  Created by Valdo Parlinggoman on 07/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var rectangleView: UIView!{
        didSet{
            rectangleView.roundCorners(corners: [.topLeft, .topRight], radius: 30)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        let vc = UIStoryboard(name: "SignUpView", bundle: nil).instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        vc.navigationItem.hidesBackButton = true
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func loginButtonTapped (_ sender: UIButton){
        let vc = UIStoryboard(name: "LoginView", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        vc.navigationItem.hidesBackButton = true
        self.navigationController?.pushViewController(vc, animated: true)
        print("tapped")
    }
    
}


