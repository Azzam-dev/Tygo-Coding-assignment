//
//  RegistrationVC.swift
//  Tygo
//
//  Created by Azzam AL-Rashed on 13/12/1443 AH.
//

import UIKit

class RegistrationVC: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var switchButton: UIButton!
    
    //this is used for the revealing splash animtion
    let revealingSplashView = RevealingSplashView(iconImage: UIImage(named : "logo" )!, iconInitialSize: CGSize(width: 109, height: 50) , backgroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.bindToKeyBoard()
        self.hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func didPressRegisterButton(_ sender: Any) {
    }
    
    @IBAction func didPressSwitchButton(_ sender: Any) {
        if firstLabel.text == "Register" {
            nameTextField.isHidden = true
            firstLabel.text = "Login"
            secondLabel.text = "You don’t have an account?"
            registerButton.setTitle("Login", for: .normal)
            switchButton.setTitle("Register now", for: .normal)
        } else {
            nameTextField.isHidden = false
            firstLabel.text = "Register"
            secondLabel.text = "Do you have an account?"
            registerButton.setTitle("Register", for: .normal)
            switchButton.setTitle("Login", for: .normal)
        }
    }
}

